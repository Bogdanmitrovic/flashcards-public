import 'package:flashcards/domain/models/flashcards/bookmark/bookmark.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'bookmark_review_state.freezed.dart';

enum BookmarkReviewStatus { success, error }

extension BookmarkReviewStatusX on BookmarkReviewStatus {
  bool get isSuccess => this == BookmarkReviewStatus.success;
  bool get isError => this == BookmarkReviewStatus.error;
}

@freezed
abstract class BookmarkReviewState with _$BookmarkReviewState {
  const factory BookmarkReviewState({
    required PagingState<int, Bookmark> pagingState,
    @Default({}) Map<String, bool> visibleAnswers,
    @Default({}) Map<String, bool> forbidRemoval,
    Exception? error,
  }) = _BookmarkReviewState;
}
