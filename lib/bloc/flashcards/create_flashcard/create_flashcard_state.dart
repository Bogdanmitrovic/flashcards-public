import 'package:flashcards/domain/models/core/image_data_wrapper.dart';
import 'package:flashcards/domain/models/flashcards/tag/tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_flashcard_state.freezed.dart';

enum CreateFlashcardStatus {
  initial,
  loading,
  tagsLoading,
  formInvalid,
  success,
  error,
}

extension CreateFlashcardStatusX on CreateFlashcardStatus {
  bool get isInitial => this == CreateFlashcardStatus.initial;

  bool get isLoading => this == CreateFlashcardStatus.loading;

  bool get isTagsLoading => this == CreateFlashcardStatus.tagsLoading;

  bool get isFromInvalid => this == CreateFlashcardStatus.formInvalid;

  bool get isSuccess => this == CreateFlashcardStatus.success;

  bool get isError => this == CreateFlashcardStatus.error;
}

@freezed
abstract class CreateFlashcardState with _$CreateFlashcardState {
  const factory CreateFlashcardState({
    @Default(CreateFlashcardStatus.initial) CreateFlashcardStatus status,
    @Default({}) Map<String, String> formErrors,
    List<Tag>? allAvailableTags,
    @Default([]) List<Tag> selectedTags,
    @Default(ImageDataWrapper()) ImageDataWrapper questionImageData,
    @Default(ImageDataWrapper()) ImageDataWrapper answerImageData,
    @Default(false) bool shouldExit,
    Exception? error,
  }) = _CreateFlashcardState;
}
