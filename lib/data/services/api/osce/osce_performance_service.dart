import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flashcards/data/remote/firestore_db_context.dart';
import 'package:flashcards/data/services/api/dto/osces/osce_performance/osce_attempt/osce_attempt_dto.dart';
import 'package:flashcards/data/services/api/dto/osces/osce_performance/osce_performance_dto.dart';
import 'package:flashcards/data/services/api/dto/osces/osce_performance/patch_osce_performance/patch_osce_performance_dto.dart';
import 'package:flashcards/data/services/api/exceptions/document_doesnt_exist_exception.dart';
import 'package:flashcards/data/utils/data_utils.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flashcards/utils/typedefs.dart';

class OscePerformanceService {
  final CollectionReference<JsonMap> Function(String uid)
  _getOscePerfCollection;
  final CollectionReference<JsonMap> Function({
    required String osceId,
    required String uid,
  })
  _getOsceAttemptsCollection;
  final Query<JsonMap> _oscePerformanceGroup;
  final WriteBatch Function() _createBatch;

  OscePerformanceService({required FirestoreDbContext dbContext})
    : _getOsceAttemptsCollection = dbContext.getOsceAttemptsCollection,
      _getOscePerfCollection = dbContext.getOscePerformanceCollection,
      _oscePerformanceGroup = dbContext.oscePerformanceGroup,
      _createBatch = dbContext.createBatch;

  Future<Result<PaginatedDtoResult<OscePerformanceDto>>>
  getOscePerformancesPagination({
    required String uid,
    required DocumentSnapshot? startAfter,
    required int limit,
  }) async {
    try {
      var query = _getOscePerfCollection(
        uid,
      ).orderBy('bestScore', descending: true).limit(limit);
      if (startAfter != null) {
        query = query.startAfterDocument(startAfter);
      }

      final snapshot = await query.get();
      final dtoList =
          snapshot.docs
              .map(
                (doc) => OscePerformanceDto.fromJsonWithId(doc.data(), doc.id),
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

  Future<Result<PaginatedDtoResult<OsceAttemptDto>>> getOsceAttemptsPagination({
    required String uid,
    required String osceId,
    required DocumentSnapshot? startAfter,
    required int limit,
  }) async {
    try {
      var query = _getOsceAttemptsCollection(
        osceId: osceId,
        uid: uid,
      ).orderBy('attemptDate', descending: true).limit(limit);
      if (startAfter != null) {
        query = query.startAfterDocument(startAfter);
      }

      final snapshot = await query.get();
      final dtoList =
          snapshot.docs
              .map((doc) => OsceAttemptDto.fromJsonWithId(doc.data(), doc.id))
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

  /// Deletes all attempts as well as performance document.
  Future<Result<void>> deleteEntirePerformance({
    required String osceId,
    required String uid,
  }) async {
    try {
      // deleting attempts
      final usersQuery = _getOsceAttemptsCollection(
        uid: uid,
        osceId: osceId,
      ).limit(500);
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

      // then we delete performance, if all attempts are deleted successfully
      await _getOscePerfCollection(uid).doc(osceId).delete();

      return Result.ok(null);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<Result<void>> patchOscePerformances({
    required String osceId,
    required PatchOscePerformanceDto patch,
  }) async {
    try {
      var query = _oscePerformanceGroup
          .where("osceId", isEqualTo: osceId)
          .orderBy("osceId")
          .limit(500);
      QuerySnapshot<JsonMap> snapshot;
      DocumentSnapshot<JsonMap>? lastDoc;

      // we update results in a batch of 500, since batch writes are limited to
      // 500 operations at once
      do {
        if (lastDoc != null) {
          query = query.startAfterDocument(lastDoc);
        }
        snapshot = await query.get();
        if (snapshot.docs.isEmpty) break;

        final batch = _createBatch();
        for (final doc in snapshot.docs) {
          batch.update(doc.reference, patch.toJson());
        }
        await batch.commit();

        lastDoc = getLastDocFromSnapshot(snapshot);
      } while (snapshot.docs.isNotEmpty);

      return Result.ok(null);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  // Transactions

  Future<Result<OscePerformanceDto>> getPerformanceInTransaction({
    required String uid,
    required String osceId,
    required Transaction transaction,
  }) async {
    try {
      final ref = _getOscePerfCollection(uid).doc(osceId);
      final snapshot = await transaction.get(ref);

      if (!snapshot.exists) {
        return Result.error(DocumentDoesntExistException());
      }

      final dto = OscePerformanceDto.fromJsonWithId(
        snapshot.data()!,
        snapshot.id,
      );
      return Result.ok(dto);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  void createPerformanceInTransaction({
    required String uid,
    required OscePerformanceDto dto,
    required Transaction transaction,
  }) async {
    final ref = _getOscePerfCollection(uid).doc(dto.osceId);
    transaction.set(ref, dto.toJson());
  }

  void createAttemptInTransaction({
    required String osceId,
    required String uid,
    required OsceAttemptDto dto,
    required Transaction transaction,
  }) async {
    final ref = _getOsceAttemptsCollection(osceId: osceId, uid: uid).doc();
    transaction.set(ref, dto.toJson());
  }

  void updatePerformanceInTransaction({
    required String osceId,
    required String uid,
    required Transaction transaction,
    required PatchOscePerformanceDto patchDto,
  }) {
    final ref = _getOscePerfCollection(uid).doc(osceId);
    transaction.update(ref, patchDto.toJson());
  }

  void deleteAttemptInBatch({
    required String uid,
    required String osceId,
    required String attemptId,
    required WriteBatch batch,
  }) async {
    final ref = _getOsceAttemptsCollection(
      osceId: osceId,
      uid: uid,
    ).doc(attemptId);

    batch.delete(ref);
  }

  void incrementAttemptsForPerformanceInBatch({
    required String osceId,
    required String uid,
    required WriteBatch batch,
    required int increment,
  }) {
    final ref = _getOscePerfCollection(uid).doc(osceId);
    batch.update(ref, {"attemptsCount": FieldValue.increment(increment)});
  }
}
