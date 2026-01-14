import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flashcards/data/remote/cloud_function_service.dart';
import 'package:flashcards/data/utils/data_utils.dart';
import 'package:flashcards/data/remote/firestore_db_context.dart';
import 'package:flashcards/data/services/api/dto/flashcards/pp_data/pp_data_dto.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flashcards/utils/typedefs.dart';

class PpService {
  final CollectionReference<JsonMap> _ppData;
  final CloudFunctionService _functions;

  PpService({
    required FirestoreDbContext dbContext,
    required CloudFunctionService functions,
  }) : _ppData = dbContext.ppData,
       _functions = functions;

  Future<Result<PpDataDto>> getDocument({
    required String profileId,
    required String packId,
  }) async {
    try {
      final id = _constructId(profileId: profileId, packId: packId);
      final snapshot = await _ppData.doc(id).get();
      if (!snapshot.exists) {
        return Result.error(
          Exception("Document $id doesn't exists in pp_data"),
        );
      }
      final dto = PpDataDto.fromJson(snapshot.data()!);
      return Result.ok(dto);
    } on Exception catch (exc) {
      return Result.error(exc);
    }
  }

  Future<Result<PaginatedDtoResult<PpDataDto>>>
  getDocumentsForProfilePagination({
    required String profileId,
    required DocumentSnapshot<JsonMap>? startAfter,
    required int limit,
  }) async {
    try {
      var query = _ppData
          .where('profileId', isEqualTo: profileId)
          .orderBy('lastOpenedAt')
          .limit(limit);

      if (startAfter != null) {
        query = query.startAfterDocument(startAfter);
      }

      final snapshot = await query.get();
      final dtoList =
          snapshot.docs.map((doc) => PpDataDto.fromJson(doc.data())).toList();
      final lastDoc = getLastDocFromSnapshot(snapshot);
      return Result.ok(
        PaginatedDtoResult(lastDocument: lastDoc, items: dtoList),
      );
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<Result<void>> setDocument(PpDataDto dto) async {
    try {
      final id = _constructId(profileId: dto.profileId, packId: dto.packId);
      final ref = _ppData.doc(id);
      await ref.set(dto.toJson());
      return Result.ok(null);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<Result<void>> updateDocument({
    required String profileId,
    required String packId,
    required JsonMap partialJson,
  }) async {
    try {
      final id = _constructId(profileId: profileId, packId: packId);
      final ref = _ppData.doc(id);
      await ref.update(partialJson);
      return Result.ok(null);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<Result<void>> deletePackProgress(String packId) async {
    try {
      await _functions.deletePackProgress(packId);

      return Result.ok(null);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  String _constructId({required String profileId, required String packId}) {
    return '${profileId}_$packId';
  }
}
