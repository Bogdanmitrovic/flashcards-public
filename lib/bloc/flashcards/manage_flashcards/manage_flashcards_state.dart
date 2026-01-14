import 'package:flashcards/domain/models/flashcards/flashcard/flashcard.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'manage_flashcards_state.freezed.dart';

enum ManageFlashcardsLoadedStatus { initial, loading, deleteSuccessful, error }

extension ManageFlashcardsLoadedStatusX on ManageFlashcardsLoadedStatus {
  bool get isInitial => this == ManageFlashcardsLoadedStatus.initial;
  bool get isLoading => this == ManageFlashcardsLoadedStatus.loading;
  bool get isDeleteSuccessful =>
      this == ManageFlashcardsLoadedStatus.deleteSuccessful;
  bool get isError => this == ManageFlashcardsLoadedStatus.error;
}

@freezed
abstract class ManageFlashcardsState with _$ManageFlashcardsState {
  const factory ManageFlashcardsState({
    required PagingState<int, Flashcard> pagingState,
    @Default(ManageFlashcardsLoadedStatus.initial)
    ManageFlashcardsLoadedStatus status,
    Exception? error,
  }) = _ManageFlashcardsState;
}
