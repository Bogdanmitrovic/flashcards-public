import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flashcards/data/remote/firestore_db_context.dart';
import 'package:flashcards/data/repositories/utils/pagination/paginated_cursor_map.dart';
import 'package:flashcards/data/services/api/dto/flashcards/fcp_data/flashcard_snapshot/flashcard_snapshot_dto.dart';
import 'package:flashcards/data/services/api/dto/flashcards/flashcard_report/flashcard_report_dto.dart';
import 'package:flashcards/data/services/api/dto/flashcards/flashcard_report/user_report/user_report_dto.dart';
import 'package:flashcards/data/services/api/dto/flashcards/pack/pack_dto.dart';
import 'package:flashcards/data/services/api/flashcards/pack_service.dart';
import 'package:flashcards/data/utils/data_utils.dart';
import 'package:flashcards/data/services/api/users/auth_service.dart';
import 'package:flashcards/data/services/api/exceptions/document_doesnt_exist_exception.dart';
import 'package:flashcards/data/services/api/flashcards/report_service.dart';
import 'package:flashcards/domain/enums/report_reason.dart';
import 'package:flashcards/domain/models/flashcards/flashcard/flashcard.dart';
import 'package:flashcards/domain/models/flashcards/reports/flashcard_report/flashcard_report.dart';
import 'package:flashcards/domain/models/flashcards/reports/user_report/user_report.dart';
import 'package:flashcards/utils/result.dart';

class ReportRepository {
  final PackService _packService;
  final ReportService _reportService;
  final AuthService _authService;
  final Future<T> Function<T>(
    Future<T> Function(Transaction transaction) transactionHandler,
  )
  _runTransaction;

  final PaginatedCursorMap _fcReportsCursorMap = PaginatedCursorMap();
  final PaginatedCursorMap _userReportsCursorMap = PaginatedCursorMap();

  ReportRepository({
    required PackService packService,
    required ReportService reportService,
    required AuthService authService,
    required FirestoreDbContext dbContext,
  }) : _reportService = reportService,
       _packService = packService,
       _authService = authService,
       _runTransaction = dbContext.runTransaction;

  Future<Result<void>> reportFlashcard({
    required Flashcard flashcard,
    required String packId,
    String? packName,
    required ReportReason reportReason,
    required String? message,
  }) async {
    final flashcardId = flashcard.id;
    final now = DateTime.now();
    final userReport = UserReport(
      userId: _getUid(),
      reason: reportReason,
      reportTime: now,
      message: message,
    );

    try {
      await _runTransaction((transaction) async {
        // 1) fetch pack if name not provided
        final packRes = await _packService.getDocument(packId);
        switch (packRes) {
          case Error<PackDto>(:final error):
            throw error;
          case Ok<PackDto>():
        }
        packName = packRes.value.name;

        // 2) check if flashcard report exists
        final getResult = await _reportService.getFlashcardReportInTransaction(
          flashcardId: flashcardId,
          transaction: transaction,
        );
        switch (getResult) {
          case Error<FlashcardReportDto>(:final error):
            if (error is! DocumentDoesntExistException) {
              throw error;
            }

            // create new flashcard report
            final dto = FlashcardReportDto(
              id: flashcardId,
              packName: packName!,
              flashcardSnapshot: FlashcardSnapshotDto.fromFlashcard(flashcard),
              firstReportTime: now,
            );
            _reportService.createFlashcardReportInTransaction(
              dto: dto,
              transaction: transaction,
            );

            _reportService.createUserReportInTransaction(
              flashcardId: flashcardId,
              userId: _getUid(),
              dto: UserReportDto.fromDomain(userReport),
              transaction: transaction,
            );

            return; // early exit
          case Ok<FlashcardReportDto>():
        }

        // 3) check if user already reported
        final uid = _getUid();
        final userGetResult = await _reportService.getUserReportInTransaction(
          userId: uid,
          flashcardId: flashcardId,
          transaction: transaction,
        );
        switch (userGetResult) {
          case Ok<UserReportDto>():
            throw Exception("You already reported this flashcard.");
          case Error<UserReportDto>(:final error):
            if (error is! DocumentDoesntExistException) {
              throw error;
            }
        }

        // 4) increment + create user report
        _reportService.incrementFlashcardReportsCountInTransaction(
          flashcardId: flashcardId,
          transaction: transaction,
          increment: 1,
        );

        _reportService.createUserReportInTransaction(
          flashcardId: flashcardId,
          userId: uid,
          dto: UserReportDto.fromDomain(userReport),
          transaction: transaction,
        );
      });

      return Result.ok(null);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  Future<Result<List<FlashcardReport>>> getFlashcardReportsPage({
    required int pageIndex,
    required int pageSize,
  }) async {
    final lastDoc = _fcReportsCursorMap.getLastDocFromPrevPage(pageIndex);
    final getResult = await _reportService.getFlashcardReportsPagination(
      limit: pageSize,
      startAfter: lastDoc,
    );
    switch (getResult) {
      case Error<PaginatedDtoResult<FlashcardReportDto>>(:final error):
        return Result.error(error);
      case Ok<PaginatedDtoResult<FlashcardReportDto>>():
    }
    final dtoResult = getResult.value;
    final list = dtoResult.items.map((dto) => dto.toDomain()).toList();

    _fcReportsCursorMap.put(pageIndex, dtoResult.lastDocument);
    return Result.ok(list);
  }

  Future<Result<List<UserReport>>> getUserReportsPage({
    required String flashcardId,
    required int pageIndex,
    required int pageSize,
  }) async {
    final lastDoc = _userReportsCursorMap.getLastDocFromPrevPage(pageIndex);
    final getResult = await _reportService.getUserReportsPagination(
      flashcardId: flashcardId,
      limit: pageSize,
      startAfter: lastDoc,
    );
    switch (getResult) {
      case Error<PaginatedDtoResult<UserReportDto>>(:final error):
        return Result.error(error);
      case Ok<PaginatedDtoResult<UserReportDto>>():
    }
    final dtoResult = getResult.value;
    final list = dtoResult.items.map((dto) => dto.toDomain()).toList();

    _userReportsCursorMap.put(pageIndex, dtoResult.lastDocument);
    return Result.ok(list);
  }

  /// It resolves report by deleting flashcard report as well as all user reports related to it
  Future<Result<void>> resolveReport(String flashcardId) async {
    return await _reportService.deleteEntireReport(flashcardId);
  }

  String _getUid() {
    return getCurrentUserAndThrow(
      authService: _authService,
      repoName: "Report Repository",
    ).uid;
  }
}
