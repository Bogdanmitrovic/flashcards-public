import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flashcards/utils/typedefs.dart';

/// Used for pagination. For firestore you need to provide DocumentSnapshot in order to paginate your result.
///
/// This class provides you with a way to store doc snapshot and a way to pull last stored document by just providing the current page index.
class PaginatedCursorMap {
  final Map<int, DocumentSnapshot<JsonMap>?> _map = {};

  DocumentSnapshot<JsonMap>? getLastDocFromPrevPage(int pageIndex) {
    if (pageIndex == 0) return null;
    return _map[pageIndex - 1];
  }

  void put(int pageIndex, DocumentSnapshot<JsonMap>? doc) {
    _map[pageIndex] = doc;
  }
}
