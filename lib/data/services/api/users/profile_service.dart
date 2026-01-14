import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flashcards/data/remote/firestore_db_context.dart';
import 'package:flashcards/data/services/api/dto/users/profile/profile_dto.dart';
import 'package:flashcards/data/services/api/exceptions/document_doesnt_exist_exception.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flashcards/utils/typedefs.dart';

class ProfileService {
  final CollectionReference<JsonMap> _users;

  ProfileService({required FirestoreDbContext dbContext})
    : _users = dbContext.users;

  Future<Result<void>> setDocument(String uid, ProfileDto dto) async {
    try {
      await _users.doc(uid).set(dto.toJson());
      return Result.ok(null);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<Result<ProfileDto>> getDocument(String uid) async {
    try {
      final doc = await _users.doc(uid).get();

      if (!doc.exists) {
        return Result.error(DocumentDoesntExistException());
      }

      return Result.ok(ProfileDto.fromJson(doc.data()!));
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<Result<void>> updateDocument(String uid, JsonMap data) async {
    try {
      await _users.doc(uid).update(data);
      return Result.ok(null);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<Result<void>> deleteDocument(String uid) async {
    try {
      await _users.doc(uid).delete();
      return Result.ok(null);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }
}
