import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flashcards/data/remote/firestore_db_context.dart';
import 'package:flashcards/data/services/api/dto/flashcards/flashcard_report/flashcard_report_dto.dart';
import 'package:flashcards/data/services/api/dto/flashcards/flashcard_report/user_report/user_report_dto.dart';
import 'package:flashcards/data/services/api/exceptions/document_doesnt_exist_exception.dart';
import 'package:flashcards/data/utils/data_utils.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flashcards/utils/typedefs.dart';

class ReportService {
  final CollectionReference<JsonMap> _flashcardReports;
  final CollectionReference<JsonMap> Function(String flashcardId)
  _getUserReportsCollection;
  final WriteBatch Function() _createBatch;

  ReportService({required FirestoreDbContext dbContext})
    : _flashcardReports = dbContext.flashcardReports,
      _createBatch = dbContext.createBatch,
      _getUserReportsCollection = dbContext.getUserReportsCollection;

  Future<Result<PaginatedDtoResult<FlashcardReportDto>>>
  getFlashcardReportsPagination({
    required DocumentSnapshot? startAfter,
    required int limit,
  }) async {
    try {
      var query = _flashcardReports
          .orderBy('reportsCount', descending: true)
          .limit(limit);
      if (startAfter != null) {
        query = query.startAfterDocument(startAfter);
      }

      final snapshot = await query.get();
      final dtoList =
          snapshot.docs
              .map(
                (doc) => FlashcardReportDto.fromJsonWithId(doc.data(), doc.id),
              )
              .toList();

      return Result.ok(
        PaginatedDtoResult(
          items: dtoList,
          lastDocument: getLastDocFromSnapshot(snapshot),
        ),
      );
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<Result<PaginatedDtoResult<UserReportDto>>> getUserReportsPagination({
    required String flashcardId,
    required DocumentSnapshot? startAfter,
    required int limit,
  }) async {
    try {
      var query = _getUserReportsCollection(
        flashcardId,
      ).orderBy('reason').limit(limit);
      if (startAfter != null) {
        query = query.startAfterDocument(startAfter);
      }

      final snapshot = await query.get();
      final dtoList =
          snapshot.docs
              .map((doc) => UserReportDto.fromJsonWithId(doc.data(), doc.id))
              .toList();

      return Result.ok(
        PaginatedDtoResult(
          items: dtoList,
          lastDocument: getLastDocFromSnapshot(snapshot),
        ),
      );
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  /// Deletes all user reports as well as flashcard report.
  Future<Result<void>> deleteEntireReport(String flashcardId) async {
    try {
      // deleting user reports
      final usersQuery = _getUserReportsCollection(
        flashcardId,
      ).orderBy("reason").limit(500);
      QuerySnapshot<JsonMap> snapshot;

      // we delete results in a batch of 500, since batch writes are limited to
      // 500 operations at once
      do {
        snapshot = await usersQuery.get();
        if (snapshot.docs.isEmpty) break;

        final batch = _createBatch();
        for (final doc in snapshot.docs) {
          batch.delete(doc.reference);
        }

        await batch.commit();
      } while (snapshot.docs.isNotEmpty);

      // then we delete flashcard report, if all user reports are deleted successfully
      await _flashcardReports.doc(flashcardId).delete();

      return Result.ok(null);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  // Transactions

  Future<Result<FlashcardReportDto>> getFlashcardReportInTransaction({
    required String flashcardId,
    required Transaction transaction,
  }) async {
    try {
      final ref = _flashcardReports.doc(flashcardId);
      final snapshot = await transaction.get(ref);

      if (!snapshot.exists) {
        return Result.error(DocumentDoesntExistException());
      }

      final dto = FlashcardReportDto.fromJsonWithId(
        snapshot.data()!,
        snapshot.id,
      );
      return Result.ok(dto);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<Result<UserReportDto>> getUserReportInTransaction({
    required String userId,
    required String flashcardId,
    required Transaction transaction,
  }) async {
    try {
      final ref = _getUserReportsCollection(flashcardId).doc(userId);
      final snapshot = await transaction.get(ref);

      if (!snapshot.exists) {
        return Result.error(DocumentDoesntExistException());
      }
      final dto = UserReportDto.fromJsonWithId(snapshot.data()!, snapshot.id);
      return Result.ok(dto);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  void createFlashcardReportInTransaction({
    required FlashcardReportDto dto,
    required Transaction transaction,
  }) async {
    final ref = _flashcardReports.doc(dto.id!);
    transaction.set(ref, dto.toJson());
  }

  void createUserReportInTransaction({
    required String flashcardId,
    required String userId,
    required UserReportDto dto,
    required Transaction transaction,
  }) async {
    final ref = _getUserReportsCollection(flashcardId).doc(userId);
    transaction.set(ref, dto.toJson());
  }

  void incrementFlashcardReportsCountInTransaction({
    required String flashcardId,
    required Transaction transaction,
    required int increment,
  }) {
    final ref = _flashcardReports.doc(flashcardId);
    transaction.update(ref, {"reportsCount": FieldValue.increment(increment)});
  }
}
