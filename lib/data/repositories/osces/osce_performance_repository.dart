import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flashcards/data/remote/firestore_db_context.dart';
import 'package:flashcards/data/repositories/utils/pagination/paginated_cursor_map.dart';
import 'package:flashcards/data/services/api/dto/osces/osce_performance/osce_attempt/osce_attempt_dto.dart';
import 'package:flashcards/data/services/api/dto/osces/osce_performance/osce_performance_dto.dart';
import 'package:flashcards/data/services/api/dto/osces/osce_performance/osce_snapshot/osce_snapshot_dto.dart';
import 'package:flashcards/data/services/api/dto/osces/osce_performance/patch_osce_performance/patch_osce_performance_dto.dart';
import 'package:flashcards/data/services/api/exceptions/document_doesnt_exist_exception.dart';
import 'package:flashcards/data/services/api/osce/osce_performance_service.dart';
import 'package:flashcards/data/services/api/users/auth_service.dart';
import 'package:flashcards/data/utils/data_utils.dart';
import 'package:flashcards/domain/models/osce/osce_performance/osce_attempt/osce_attempt.dart';
import 'package:flashcards/domain/models/osce/osce_performance/osce_performance.dart';
import 'package:flashcards/domain/models/osce/simple_osce/simple_osce.dart';
import 'package:flashcards/utils/result.dart';

class OscePerformanceRepository {
  final OscePerformanceService _oscePerformanceService;
  final AuthService _authService;
  final Future<T> Function<T>(
    Future<T> Function(Transaction transaction) transactionHandler,
  )
  _runTransaction;
  final WriteBatch Function() _createBatch;

  final PaginatedCursorMap _performancesCursorMap = PaginatedCursorMap();
  final PaginatedCursorMap _attemptsCursorMap = PaginatedCursorMap();
  final int maxAttemptsPerOsce = 50;

  OscePerformanceRepository({
    required OscePerformanceService oscePerfService,
    required AuthService authService,
    required FirestoreDbContext dbContext,
  }) : _oscePerformanceService = oscePerfService,
       _authService = authService,
       _runTransaction = dbContext.runTransaction,
       _createBatch = dbContext.createBatch;

  Future<Result<void>> saveOsceAttempt({
    required SimpleOsce simpleOsce,
    required int maxScore,
    required int achievedScore,
  }) async {
    final osceId = simpleOsce.id;
    final now = DateTime.now();
    final attemptDto = OsceAttemptDto(
      achievedScore: achievedScore,
      maxScore: maxScore,
      attemptDate: now,
    );
    final uid = _getUid();

    try {
      await _runTransaction((transaction) async {
        // 1) check if performance exists
        final getResult = await _oscePerformanceService
            .getPerformanceInTransaction(
              osceId: osceId,
              uid: uid,
              transaction: transaction,
            );
        switch (getResult) {
          case Error<OscePerformanceDto>(:final error):
            if (error is! DocumentDoesntExistException) {
              throw error;
            }

            // create new performance document
            final dto = OscePerformanceDto(
              osceSnapshot: OsceSnapshotDto.fromSimpleOsce(simpleOsce),
              attemptsCount: 1,
              bestScore: achievedScore,
              firstAttemptDate: now,
              osceId: simpleOsce.id,
            );
            _oscePerformanceService.createPerformanceInTransaction(
              uid: uid,
              dto: dto,
              transaction: transaction,
            );

            // then create attempt document
            _oscePerformanceService.createAttemptInTransaction(
              uid: uid,
              osceId: osceId,
              dto: attemptDto,
              transaction: transaction,
            );

            return; // early exit
          case Ok<OscePerformanceDto>():
        }
        final oscePerf = getResult.value.toDomain();

        // then we quickly count how many attempts there are
        // I would use .count() on transaction because it would be safer that way
        // but aggregation queries are not available in transaction :((
        if (oscePerf.attemptsCount >= maxAttemptsPerOsce) {
          throw Exception(
            "You’ve hit the $maxAttemptsPerOsce-result storage limit for this OSCE. "
            "Remove some old results to keep your history manageable.",
          );
        }

        // 2) calculate average and check best score
        final newAttemptsCount = oscePerf.attemptsCount + 1;
        final newBestScore =
            achievedScore > oscePerf.bestScore ? achievedScore : null;
        final patchDto = PatchOscePerformanceDto(
          bestScore: newBestScore,
          attemptsCount: newAttemptsCount,
        );

        // 3) update performance
        _oscePerformanceService.updatePerformanceInTransaction(
          osceId: osceId,
          uid: uid,
          transaction: transaction,
          patchDto: patchDto,
        );

        // 4) add attempt
        _oscePerformanceService.createAttemptInTransaction(
          osceId: osceId,
          uid: uid,
          dto: attemptDto,
          transaction: transaction,
        );
      });

      return Result.ok(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<List<OscePerformance>>> getPerformancePage({
    required int pageIndex,
    required int pageSize,
  }) async {
    final uid = _getUid();
    final lastDoc = _performancesCursorMap.getLastDocFromPrevPage(pageIndex);
    final getResult = await _oscePerformanceService
        .getOscePerformancesPagination(
          uid: uid,
          limit: pageSize,
          startAfter: lastDoc,
        );
    switch (getResult) {
      case Error<PaginatedDtoResult<OscePerformanceDto>>(:final error):
        return Result.error(error);
      case Ok<PaginatedDtoResult<OscePerformanceDto>>():
    }
    final dtoResult = getResult.value;
    final list = dtoResult.items.map((dto) => dto.toDomain()).toList();

    _performancesCursorMap.put(pageIndex, dtoResult.lastDocument);
    return Result.ok(list);
  }

  Future<Result<List<OsceAttempt>>> getAttemptsPage({
    required String osceId,
    required int pageIndex,
    required int pageSize,
  }) async {
    final uid = _getUid();
    final lastDoc = _attemptsCursorMap.getLastDocFromPrevPage(pageIndex);
    final getResult = await _oscePerformanceService.getOsceAttemptsPagination(
      uid: uid,
      osceId: osceId,
      limit: pageSize,
      startAfter: lastDoc,
    );
    switch (getResult) {
      case Error<PaginatedDtoResult<OsceAttemptDto>>(:final error):
        return Result.error(error);
      case Ok<PaginatedDtoResult<OsceAttemptDto>>():
    }
    final dtoResult = getResult.value;
    final list = dtoResult.items.map((dto) => dto.toDomain()).toList();

    _attemptsCursorMap.put(pageIndex, dtoResult.lastDocument);
    return Result.ok(list);
  }

  Future<Result<void>> deletePerformanceAndAttempts(String osceId) async {
    return await _oscePerformanceService.deleteEntirePerformance(
      osceId: osceId,
      uid: _getUid(),
    );
  }

  Future<Result<void>> deleteAttempt({
    required String osceId,
    required String attemptId,
  }) async {
    try {
      final uid = _getUid();
      final batch = _createBatch();
      _oscePerformanceService.incrementAttemptsForPerformanceInBatch(
        osceId: osceId,
        uid: uid,
        batch: batch,
        increment: -1,
      );

      _oscePerformanceService.deleteAttemptInBatch(
        uid: uid,
        osceId: osceId,
        attemptId: attemptId,
        batch: batch,
      );

      await batch.commit();
      return Result.ok(null);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  String _getUid() {
    return getCurrentUserAndThrow(
      authService: _authService,
      repoName: "osce performance repository",
    ).uid;
  }
}
