import 'package:algoliasearch/algoliasearch_lite.dart';
import 'package:flashcards/data/services/api/algolia_search/flashcards_searcher_service.dart';
import 'package:flashcards/domain/models/algolia/algolia_flashcard/algolia_flashcard.dart';
import 'package:flashcards/domain/models/algolia/pack_search_result/search_result_with_tags.dart';
import 'package:flashcards/domain/models/flashcards/tag/tag.dart';
import 'package:flashcards/utils/result.dart';

class FlashcardsSearcherRepository {
  final FlashcardsSearcherService _flashcardsSearcherService;

  /// It's used for storing all tags during search when service returns facets (tags)
  /// When we send a query to the algolia and it doesn't return all facets, we use this
  /// to store all facets/tags when we send empty query.
  List<Tag> _allTags = [];

  FlashcardsSearcherRepository({
    required FlashcardsSearcherService flashcardsSearcherService,
  }) : _flashcardsSearcherService = flashcardsSearcherService;

  /// It uses algolia to search the index for the packs collection
  Future<Result<SearchResultWithTags<AlgoliaFlashcard>>> searchFlashcards({
    required String query,
    required List<Tag> tags,
    required int page,
  }) async {
    final result = await _flashcardsSearcherService.search(
      query: query,
      tagIds: tags.map((tag) => tag.id).toList(),
      page: page,
    );
    switch (result) {
      case Error<SearchResponse>(:final error):
        return Result.error(error);
      case Ok<SearchResponse>():
    }
    final tagFacet = result.value.facets!['tags'];
    List<MapEntry<Tag, int>> tagCounts = [];

    // If we send empty query we know that we will receive all facets, we then
    // update the cache.
    if (query.isEmpty && tags.isEmpty && tagFacet != null) {
      _updateCacheFromFacet(tagFacet);
    }

    final packResult = SearchResultWithTags.fromAlgoliaResponse(
      response: result.value,
      allTagsCache: _allTags,
      fromJson: (json) => AlgoliaFlashcard.fromJson(json),
    );
    return Result.ok(packResult);
  }

  void _updateCacheFromFacet(Map<String, int> facetCounts) {
    _allTags =
        facetCounts.keys.map((id) => Tag.fromId(id)).toList()
          ..sort((a, b) => a.id.compareTo(b.id));
  }
}
