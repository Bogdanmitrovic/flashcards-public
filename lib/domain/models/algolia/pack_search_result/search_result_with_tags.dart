import 'package:algoliasearch/algoliasearch_lite.dart';
import 'package:flashcards/domain/models/flashcards/tag/tag.dart';
import 'package:flashcards/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_result_with_tags.freezed.dart';

@freezed
abstract class SearchResultWithTags<T> with _$SearchResultWithTags<T> {
  const factory SearchResultWithTags({
    required List<T> hits,
    required List<MapEntry<Tag, int>> tagCounts,
    required int pageKey,
    required int? nextPageKey,
    required bool isLastPage,
    required int hitCount,
  }) = _SearchResultWithTags<T>;

  factory SearchResultWithTags.fromAlgoliaResponse({
    required SearchResponse response,
    required List<Tag> allTagsCache,
    required T Function(JsonMap json) fromJson,
  }) {
    final hits = response.hits.map((hit) => fromJson(hit.toJson())).toList();

    final tagFacet = response.facets!['tags'];
    final tagCounts = _mergeCacheAndFacet(tagFacet ?? {}, allTagsCache);

    final currentPage = response.page ?? 0;
    final totalPages = response.nbPages ?? 0;

    final isLastPage = currentPage + 1 >= totalPages;
    final nextPageKey = isLastPage ? null : currentPage + 1;

    return SearchResultWithTags(
      hits: hits,
      tagCounts: tagCounts,
      pageKey: currentPage,
      nextPageKey: nextPageKey,
      isLastPage: isLastPage,
      hitCount: response.nbHits ?? 0,
    );
  }
}

List<MapEntry<Tag, int>> _mergeCacheAndFacet(
  Map<String, int> facetCounts,
  List<Tag> allTags,
) {
  final result = <MapEntry<Tag, int>>[];
  for (final cacheTag in allTags) {
    final count = facetCounts[cacheTag.id] ?? 0;
    result.add(MapEntry(cacheTag, count));
  }

  return result;
}
