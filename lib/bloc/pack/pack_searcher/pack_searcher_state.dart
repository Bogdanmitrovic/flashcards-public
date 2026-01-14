import 'package:flashcards/domain/models/algolia/algolia_pack/algolia_pack.dart';
import 'package:flashcards/domain/models/flashcards/tag/tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'pack_searcher_state.freezed.dart';

enum PackSearcherStatus { initial, fetching, error }

extension PackSearcherStatusX on PackSearcherStatus {
  bool get isInitial => this == PackSearcherStatus.initial;

  bool get isError => this == PackSearcherStatus.error;

  bool get isFetching => this == PackSearcherStatus.fetching;
}

extension PackSearcherStateX on PackSearcherState {
  List<Tag> get selectedTagsList => selectedTags.keys.toList();
}

@freezed
abstract class PackSearcherState with _$PackSearcherState {
  const factory PackSearcherState({
    @Default(PackSearcherStatus.initial) PackSearcherStatus status,
    required PagingState<int, AlgoliaPack> pagingState,
    @Default('') String lastQuerySent,
    @Default([]) List<MapEntry<Tag, int>> tagCounts,
    @Default({}) Map<Tag, bool> selectedTags,
    @Default(0) int hitsCount,
    bool? hasCards,
    Exception? error,
  }) = _PackSearcherState;
}
