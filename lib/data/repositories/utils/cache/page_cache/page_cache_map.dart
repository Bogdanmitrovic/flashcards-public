import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flashcards/data/repositories/utils/cache/page_cache/cached_page_pagination.dart';
import 'package:flashcards/data/repositories/utils/cache/page_cache/page_cache.dart';

// Used to map id to the cache, useful for UI views where ex. you have pack which
// contains list of flashcards. For each pack you open you can map a separate
// cache to it.
class PageCacheMap<T> {
  final Duration cacheDuration;
  final String Function(T item) getId;

  final Map<String, PageCache<T>> _cachePerParent = {};

  PageCacheMap({required this.cacheDuration, required this.getId});

  PageCache<T> _getOrCreateCache(String parentId) {
    return _cachePerParent.putIfAbsent(
      parentId,
      () => PageCache<T>(cacheDuration: cacheDuration, getId: getId),
    );
  }

  CachedPagePagination<T>? get(String parentId, int pageIndex) =>
      _getOrCreateCache(parentId).get(pageIndex);

  List<T> removeDuplicatesFromManualCache(
    String parentId,
    List<T> fetchedItems,
  ) =>
      _getOrCreateCache(parentId).removeDuplicatesFromManualCache(fetchedItems);

  void insertAtStart(String parentId, T item) =>
      _getOrCreateCache(parentId).insertAtStart(item);

  void updateItem({
    required String parentId,
    required String id,
    required T Function(T item) copyWith,
  }) => _getOrCreateCache(parentId).updateItem(id: id, copyWith: copyWith);

  void removeItem(String parentId, String id) =>
      _getOrCreateCache(parentId).removeItem(id);

  bool isPageFresh(String parentId, int pageIndex) =>
      _getOrCreateCache(parentId).isPageFresh(pageIndex);

  DocumentSnapshot? getLastDocFromPrevPage(String parentId, int pageIndex) =>
      _getOrCreateCache(parentId).getLastDocFromPrevPage(pageIndex);

  void invalidateAll() => _cachePerParent.clear();

  void invalidate(String parentId) => _cachePerParent.remove(parentId);

  void put(String parentId, int pageIndex, CachedPagePagination<T> page) =>
      _getOrCreateCache(parentId).put(pageIndex, page);

  void printCache([String? parentId]) {
    if (parentId != null) {
      print("Cache for parent: $parentId");
      _cachePerParent[parentId]?.printCache();
    } else {
      for (final entry in _cachePerParent.entries) {
        print("Parent: ${entry.key}");
        entry.value.printCache();
      }
    }
  }
}
