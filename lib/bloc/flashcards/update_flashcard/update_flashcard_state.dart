import 'package:flashcards/domain/models/core/image_data_wrapper.dart';
import 'package:flashcards/domain/models/flashcards/flashcard/flashcard.dart';
import 'package:flashcards/domain/models/flashcards/tag/tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_flashcard_state.freezed.dart';

enum UpdateFlashcardStatus {
  initial,
  loading,
  tagsLoading,
  formInvalid,
  tagInputError,
  successful,
  error,
}

extension UpdateFlashcardStatusX on UpdateFlashcardStatus {
  bool get isInitial => this == UpdateFlashcardStatus.initial;

  bool get isLoading => this == UpdateFlashcardStatus.loading;

  bool get isTagsLoading => this == UpdateFlashcardStatus.tagsLoading;

  bool get isFormInvalid => this == UpdateFlashcardStatus.formInvalid;

  bool get isSuccessful => this == UpdateFlashcardStatus.successful;

  bool get isError => this == UpdateFlashcardStatus.error;
}

@freezed
abstract class UpdateFlashcardState with _$UpdateFlashcardState {
  const factory UpdateFlashcardState({
    required Flashcard initialFlashcard,
    @Default(UpdateFlashcardStatus.initial) UpdateFlashcardStatus status,
    @Default([]) List<Tag> selectedTags,
    List<Tag>? allAvailableTags,
    @Default({}) Map<String, String> formErrors,
    required ImageDataWrapper answerImageData,
    required ImageDataWrapper questionImageData,
    Exception? error,
  }) = _UpdateFlashcardState;
}
