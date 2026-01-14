import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flashcards/data/repositories/utils/cache/page_cache/cached_page_pagination.dart';

class PageCache<T> {
  final Duration cacheDuration;
  final Map<int, CachedPagePagination<T>> _cache = {};
  final String Function(T item) getId;
  final Map<String, bool> _manuallyAddedItems = {};

  PageCache({required this.cacheDuration, required this.getId});

  CachedPagePagination<T>? get(int pageIndex) => _cache[pageIndex];

  T? getItem(String id) {
    for (final entry in _cache.entries) {
      final pageIndex = entry.key;
      final cachedPage = entry.value;

      final item = cachedPage.data.firstWhereOrNull(
        (item) => getId(item) == id,
      );

      if (item != null) {
        if (isPageFresh(pageIndex)) {
          return item;
        }
      }
    }
    return null;
  }

  void insertAtStart(T item) {
    if (_cache.isEmpty) return;

    final startKey = _cache.keys.first;
    if (_cache[startKey] == null) return;

    final newCachePageItems = [item, ...?_cache[startKey]?.data];
    _cache[startKey] = _cache[startKey]!.copyWith(data: newCachePageItems);

    // mark this as manually added
    // used to prevent a bug where duplicate items can be added
    _manuallyAddedItems[getId(item)] = true;
  }

  /// ONLY call this after fetching new page and if you are manually inserting
  // items to the cache (by calling insertAtStart function).
  // This prevents a bug where duplicate items can sometimes be added to the
  // cache and the state.
  List<T> removeDuplicatesFromManualCache(List<T> fetchedItems) {
    if (_manuallyAddedItems.isEmpty) return fetchedItems;

    final List<T> filtered = [];
    for (final item in fetchedItems) {
      final id = getId(item);

      // if the fetched item is manually added filter it out,
      // because it's already in the cache and in the state
      if (!_manuallyAddedItems.containsKey(id)) {
        filtered.add(item);
      }
    }

    return filtered;
  }

  void updateItem({required String id, required T Function(T item) copyWith}) {
    for (final entry in _cache.entries) {
      final index = entry.value.data.indexWhere((item) => getId(item) == id);
      if (index == -1) continue;

      final updatedData = List<T>.from(entry.value.data);
      updatedData[index] = copyWith(entry.value.data[index]);

      _cache[entry.key] = entry.value.copyWith(data: updatedData);
      // mark this as manually added
      // used to prevent a bug where duplicate items can be added
      _manuallyAddedItems[id] = true;
      return;
    }
  }

  void removeItem(String id) {
    for (final entry in _cache.entries) {
      final index = entry.value.data.indexWhere((item) => getId(item) == id);
      if (index == -1) continue;

      final updatedData = List<T>.from(entry.value.data);
      updatedData.removeAt(index);
      _cache[entry.key] = entry.value.copyWith(data: updatedData);
      return;
    }
  }

  bool isPageFresh(int pageIndex) {
    final cached = _cache[pageIndex];
    return cached != null &&
        DateTime.now().difference(cached.fetchedAt) < cacheDuration;
  }

  DocumentSnapshot? getLastDocFromPrevPage(int pageIndex) {
    if (pageIndex == 0) return null;
    final cacheItem = _cache[pageIndex - 1];
    return cacheItem?.lastDocument;
  }

  void invalidate() {
    _manuallyAddedItems.clear();
    _cache.clear();
  }

  void put(int pageIndex, CachedPagePagination<T> page) {
    if (page.data.isEmpty) return;

    _cache[pageIndex] = page;
  }

  void printCache() {
    print("Printing cache...");
    for (final entry in _cache.entries) {
      print(entry);
    }
  }
}
