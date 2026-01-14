class DataCache<T> {
  final Duration cacheDuration;
  final List<T> _cache = [];
  final String Function(T item) getId;
  DateTime _fetchedAt = DateTime.fromMillisecondsSinceEpoch(0);

  DataCache({required this.cacheDuration, required this.getId});

  List<T> get items => List.unmodifiable(_cache);

  void insert(int index, T item) => _cache.insert(index, item);

  void insertAll(int index, List<T> items) => _cache.insertAll(index, items);

  void add(T item) => _cache.add(item);

  void updateItem({required String id, required T Function(T item) copyWith}) {
    final index = _cache.indexWhere((item) => getId(item) == id);
    if (index == -1) return;

    _cache[index] = copyWith(_cache[index]);
  }

  void remove(String id) => _cache.removeWhere((item) => getId(item) == id);

  bool get isFresh => DateTime.now().difference(_fetchedAt) < cacheDuration;

  void invalidate() {
    _cache.clear();
    _fetchedAt = DateTime.fromMillisecondsSinceEpoch(0);
  }

  void put(List<T> items) {
    _cache
      ..clear()
      ..addAll(items);
    _fetchedAt = DateTime.now();
  }

  void printCache() {
    print("Printing cache...");
    for (final item in _cache) {
      print(item);
    }
  }
}
