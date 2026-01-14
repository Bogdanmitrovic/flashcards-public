import 'package:flashcards/domain/enums/pack_selected_filter.dart';
import 'package:flashcards/domain/models/flashcards/flashcard_filter_counts/pack_filter_counts.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pack_filter_state.freezed.dart';

@freezed
sealed class PackFilterState with _$PackFilterState {
  const factory PackFilterState.initial() = PackFilterInitial;
  const factory PackFilterState.loading() = PackFilterLoading;
  const factory PackFilterState.loaded({
    required PackFilterCounts packFilterCounts,
    @Default(PackSelectedFilter.all) PackSelectedFilter selectedFilter,
  }) = PackFilterLoaded;
  const factory PackFilterState.error({required Exception error}) =
      PackFilterError;
}
