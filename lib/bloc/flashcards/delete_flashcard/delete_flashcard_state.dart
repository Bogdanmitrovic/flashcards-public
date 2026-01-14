import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_flashcard_state.freezed.dart';

@freezed
sealed class DeleteFlashcardState with _$DeleteFlashcardState {
  const factory DeleteFlashcardState.initial() = DeleteFlashcardInitial;
  const factory DeleteFlashcardState.loading() = DeleteFlashcardLoading;
  const factory DeleteFlashcardState.error({required Exception error}) =
      DeleteFlashcardError;
  const factory DeleteFlashcardState.success() = DeleteFlashcardSuccess;
}
