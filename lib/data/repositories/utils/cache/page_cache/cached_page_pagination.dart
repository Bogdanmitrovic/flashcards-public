import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flashcards/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cached_page_pagination.freezed.dart';

@freezed
abstract class CachedPagePagination<T> with _$CachedPagePagination<T> {
  const factory CachedPagePagination({
    required List<T> data,
    required DateTime fetchedAt,
    required DocumentSnapshot<JsonMap>? lastDocument,
  }) = _CachedPagePagination<T>;
}
