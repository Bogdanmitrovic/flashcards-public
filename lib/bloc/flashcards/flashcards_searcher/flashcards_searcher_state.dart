import 'package:flashcards/domain/models/algolia/algolia_flashcard/algolia_flashcard.dart';
import 'package:flashcards/domain/models/flashcards/tag/tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'flashcards_searcher_state.freezed.dart';

enum FlashcardsSearcherStatus { initial, fetching, error }

extension FlashcardsSearcherStatusX on FlashcardsSearcherStatus {
  bool get isInitial => this == FlashcardsSearcherStatus.initial;

  bool get isError => this == FlashcardsSearcherStatus.error;

  bool get isFetching => this == FlashcardsSearcherStatus.fetching;
}

extension FlashcardsSearcherStateX on FlashcardsSearcherState {
  List<Tag> get selectedTagsList => selectedTags.keys.toList();
}

@freezed
abstract class FlashcardsSearcherState with _$FlashcardsSearcherState {
  const factory FlashcardsSearcherState({
    @Default(FlashcardsSearcherStatus.initial) FlashcardsSearcherStatus status,
    required PagingState<int, AlgoliaFlashcard> pagingState,
    @Default('') String lastQuerySent,
    @Default([]) List<MapEntry<Tag, int>> tagCounts,
    @Default({}) Map<Tag, bool> selectedTags,
    @Default(0) int hitsCount,
    bool? hasCards,
    Exception? error,
  }) = _FlashcardsSearcherState;
}
