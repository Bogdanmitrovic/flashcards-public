import 'package:flashcards/domain/models/flashcards/ignored_flashcard/ignored_flashcard.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'ignored_card_state.freezed.dart';

enum IgnoredCardStatus { success, error }

extension IgnoredCardStatusX on IgnoredCardStatus {
  bool get isSuccess => this == IgnoredCardStatus.success;
  bool get isError => this == IgnoredCardStatus.error;
}

@freezed
abstract class IgnoredCardState with _$IgnoredCardState {
  const factory IgnoredCardState({
    required PagingState<int, IgnoredFlashcard> pagingState,
    @Default({}) Map<String, bool> forbidRemoval,
    Exception? error,
  }) = _IgnoredCardState;
}
