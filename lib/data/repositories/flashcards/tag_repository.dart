import 'package:flashcards/data/repositories/utils/cache/data_cache/data_cache.dart';
import 'package:flashcards/data/services/api/dto/flashcards/tag/tag_dto.dart';
import 'package:flashcards/data/services/api/flashcards/tag_service.dart';
import 'package:flashcards/domain/models/flashcards/tag/tag.dart';
import 'package:flashcards/utils/result.dart';

class TagRepository {
  final TagService _tagService;

  final DataCache<Tag> _tagCache;

  TagRepository({
    required TagService tagService,
    required DataCache<Tag> tagCache,
  }) : _tagService = tagService,
       _tagCache = tagCache;

  Future<Result<List<Tag>>> getAllTags() async {
    if (_tagCache.isFresh) {
      return Result.ok(_tagCache.items);
    }

    final result = await _tagService.getAll();
    switch (result) {
      case Error<List<TagDto>>(:final error):
        return Result.error(error);
      case Ok<List<TagDto>>():
    }

    final domainList = result.value.map((dto) => dto.toTagDomain()).toList();
    _tagCache.put(domainList);

    return Result.ok(domainList);
  }
}
