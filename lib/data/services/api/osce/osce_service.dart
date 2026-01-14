import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flashcards/data/remote/cloud_storage_service.dart';
import 'package:flashcards/data/services/api/dto/osces/osce/osce_dto.dart';
import 'package:flashcards/data/services/api/dto/osces/osce/patch_osce/patch_osce_dto.dart';
import 'package:flashcards/data/services/api/dto/osces/question/patch_question/patch_question_dto.dart';
import 'package:flashcards/data/services/api/dto/osces/question/question_dto.dart';
import 'package:flashcards/data/utils/data_utils.dart';
import 'package:flashcards/data/remote/firestore_db_context.dart';
import 'package:flashcards/domain/models/core/picked_image.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flashcards/utils/typedefs.dart';

import '../dto/osces/osce/osce_dto.dart';

class OsceService {
  final CollectionReference<JsonMap> _osces;
  //final Query<JsonMap> _oscePerformanceGroup;
  final CollectionReference<JsonMap> Function(String osceId)
  _getQuestionsCollection;

  final WriteBatch Function() _createBatch;

  final Reference Function({required String osceId, required String questionId})
  _getQuestionImageRef;

  OsceService({
    required FirestoreDbContext dbContext,
    required CloudStorageService storage,
  }) : _osces = dbContext.osces,
       _getQuestionImageRef = storage.getQuestionImageRef,
       //_oscePerformanceGroup = dbContext.oscePerformanceGroup,
       _getQuestionsCollection = dbContext.getQuestionsCollection,
       _createBatch = dbContext.createBatch;

  DocumentReference<JsonMap> generateDocumentReference() {
    return _osces.doc();
  }

  DocumentReference<JsonMap> generateQuestionReference(String osceId) {
    return _getQuestionsCollection(osceId).doc();
  }

  DocumentReference<JsonMap> getQuestionReference(
    String osceId,
    String questionId,
  ) {
    return _getQuestionsCollection(osceId).doc(questionId);
  }

  Future<Result<void>> updateQuestionWithRef({
    required DocumentReference<JsonMap> questionRef,
    required PatchQuestionDto dto,
  }) async {
    try {
      await questionRef.update(dto.toJson());

      return Result.ok(null);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<Result<void>> createQuestionWithRef({
    required DocumentReference<JsonMap> questionRef,
    required QuestionDto dto,
  }) async {
    try {
      await questionRef.set(dto.toJson());

      return Result.ok(null);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<Result<String>> uploadQuestionImageAndGetUrl({
    required String osceId,
    required String questionId,
    required PickedImage image,
  }) async {
    try {
      final questionRef = _getQuestionImageRef(
        osceId: osceId,
        questionId: questionId,
      );
      if (image.file != null) {
        await questionRef.putFile(image.file!);
      } else {
        await questionRef.putData(image.bytes!);
      }
      final url = await questionRef.getDownloadURL();

      return Result.ok(url);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<Result<void>> deleteQuestionImage({
    required String osceId,
    required String questionId,
  }) async {
    try {
      final questionRef = _getQuestionImageRef(
        osceId: osceId,
        questionId: questionId,
      );
      await questionRef.delete();
      return Result.ok(null);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<Result<PaginatedDtoResult<OsceDto>>> getDocumentsPagination({
    required int limit,
    required DocumentSnapshot? startAfter,
  }) async {
    try {
      var query = _osces.orderBy("name").limit(limit);

      if (startAfter != null) {
        query = query.startAfterDocument(startAfter);
      }

      final snapshot = await query.get();

      final osceList =
          snapshot.docs
              .map((doc) => OsceDto.fromJsonWithId(doc.data(), doc.id))
              .toList();

      return Result.ok(
        PaginatedDtoResult(
          items: osceList,
          lastDocument: getLastDocFromSnapshot(snapshot),
        ),
      );
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<Result<List<QuestionDto>>> getQuestions(String osceId) async {
    try {
      final questionSnapshots =
          await _getQuestionsCollection(osceId).orderBy('index').get();

      final questionDtoList =
          questionSnapshots.docs
              .map((doc) => QuestionDto.fromJsonWithId(doc.data(), doc.id))
              .toList();

      return Result.ok(questionDtoList);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<Result<String>> setDocument(OsceDto dto) async {
    try {
      final osceRef = generateDocumentReference();
      await osceRef.set(dto.toJson());

      return Result.ok(osceRef.id);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<Result<void>> patchOsce(String osceId, PatchOsceDto dto) async {
    try {
      final ref = _osces.doc(osceId);

      await ref.update(dto.toJson());
      return Result.ok(null);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<Result<void>> deleteOsce(String osceId) async {
    try {
      // // first we delete osce performance for this osce
      // final resultQuery = _oscePerformanceGroup
      //     .where("osceSnapshot.id", isEqualTo: osceId)
      //     .limit(500);
      // QuerySnapshot<JsonMap> snapshot;
      // // we delete results in a batch of 500, since batch writes are limited to
      // // 500 operations at once
      // do {
      //   snapshot = await resultQuery.get();
      //   if (snapshot.docs.isEmpty) {
      //     break;
      //   }
      //   final batch = _createBatch();
      //   for (final doc in snapshot.docs) {
      //     // inside each performance there is a attempts subcollection, we need to delete it first
      //     final att
      //
      //     batch.delete(doc.reference);
      //   }
      //   await batch.commit();
      // } while (snapshot.docs.isNotEmpty);

      // then we delete every question in subcollection
      final questionsRef = _getQuestionsCollection(osceId);
      final osceBatch = _createBatch();

      final questionsSnapshot = await questionsRef.get();

      // before deleting the questions we need to delete images related to those questions
      await Future.wait(
        questionsSnapshot.docs.map((doc) async {
          final questionImageRef = _getQuestionImageRef(
            osceId: osceId,
            questionId: doc.id,
          );
          try {
            await questionImageRef.delete();
          } on FirebaseException catch (e) {
            if (e.code != 'object-not-found') rethrow;
          }
          osceBatch.delete(doc.reference);
        }),
      );

      for (final questionDoc in questionsSnapshot.docs) {
        final questionRef = questionDoc.reference;

        osceBatch.delete(questionRef);
      }
      // lastly, we delete the osce and commit
      osceBatch.delete(_osces.doc(osceId));
      await osceBatch.commit();

      return Result.ok(null);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<Result<void>> createQuestion({
    required String osceId,
    required String questionId,
    required QuestionDto dto,
  }) async {
    try {
      final questionRef = _getQuestionsCollection(osceId).doc(questionId);
      await questionRef.set(dto.toJson());

      return Result.ok(null);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<Result<void>> updateQuestion({
    required String osceId,
    required String questionId,
    required PatchQuestionDto dto,
    required bool includeNullImage,
  }) async {
    try {
      final questionRef = _getQuestionsCollection(osceId).doc(questionId);
      late final JsonMap json;
      if (includeNullImage) {
        json = dto.toJsonWithIncludedNullImage();
      } else {
        json = dto.toJson();
      }
      await questionRef.update(json);

      return Result.ok(null);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<Result<void>> deleteQuestionAndImage({
    required String osceId,
    required String questionId,
  }) async {
    try {
      final questionRef = _getQuestionsCollection(osceId).doc(questionId);
      final questionImageRef = _getQuestionImageRef(
        osceId: osceId,
        questionId: questionId,
      );
      try {
        await questionImageRef.delete();
      } on FirebaseException catch (e) {
        if (e.code != 'object-not-found') rethrow;
      }
      questionRef.delete();

      return Result.ok(null);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }
}
