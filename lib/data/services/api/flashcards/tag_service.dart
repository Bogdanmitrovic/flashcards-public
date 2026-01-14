import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flashcards/data/remote/firestore_db_context.dart';
import 'package:flashcards/data/services/api/dto/flashcards/tag/tag_dto.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flashcards/utils/typedefs.dart';

class TagService {
  final CollectionReference<JsonMap> _tags;
  final WriteBatch Function() _createBatch;

  TagService({required FirestoreDbContext dbContext})
    : _tags = dbContext.tags,
      _createBatch = dbContext.createBatch;

  DocumentReference getDocumentReference(String id) {
    return _tags.doc(id);
  }

  Future<Result<List<TagDto>>> getAll() async {
    try {
      final snapshot = await _tags.get();
      final dtoList =
          snapshot.docs
              .map((doc) => TagDto.fromJsonWithId(doc.data(), doc.id))
              .toList();

      return Result.ok(dtoList);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  Future<Result<void>> setDocuments(List<TagDto> tags) async {
    try {
      final batch = _createBatch();
      for (final tag in tags) {
        batch.set(getDocumentReference(tag.id!), tag.toJson());
      }
      await batch.commit();
      return Result.ok(null);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  void setDocumentsInTransaction(List<TagDto> tags, Transaction transaction) {
    for (final tag in tags) {
      transaction.set(getDocumentReference(tag.id!), tag.toJson());
    }
  }
}
