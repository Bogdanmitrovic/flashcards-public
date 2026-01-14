import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flashcards/domain/models/flashcards/bookmark/bookmark.dart';

abstract class BookmarkReviewEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class BookmarkReviewRefresh extends BookmarkReviewEvent {
  final Completer<void>? completer;

  BookmarkReviewRefresh({this.completer});

  @override
  List<Object?> get props => [completer];
}

class BookmarkReviewPageFetched extends BookmarkReviewEvent {}

class BookmarkReviewAnswerToggled extends BookmarkReviewEvent {
  final Bookmark bookmark;

  BookmarkReviewAnswerToggled({required this.bookmark});

  @override
  List<Object?> get props => [bookmark];
}

class BookmarkReviewBookmarkRemoved extends BookmarkReviewEvent {
  final Bookmark bookmark;

  BookmarkReviewBookmarkRemoved({required this.bookmark});

  @override
  List<Object?> get props => [bookmark];
}

class BookmarkReviewBookmarkRemovalUndo extends BookmarkReviewEvent {
  final Bookmark bookmark;
  final int index;
  final bool isAnswerVisible;

  BookmarkReviewBookmarkRemovalUndo({
    required this.bookmark,
    required this.index,
    required this.isAnswerVisible,
  });

  @override
  List<Object?> get props => [bookmark, index, isAnswerVisible];
}
