class CachedPage<T> {
  final List<T> data;
  final DateTime fetchedAt;

  const CachedPage({required this.data, required this.fetchedAt});
}
