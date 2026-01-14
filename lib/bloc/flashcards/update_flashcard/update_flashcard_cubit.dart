import 'package:flashcards/bloc/flashcards/update_flashcard/update_flashcard_state.dart';
import 'package:flashcards/data/repositories/flashcards/flashcard_repository.dart';
import 'package:flashcards/data/repositories/flashcards/tag_repository.dart';
import 'package:flashcards/domain/models/core/image_data_wrapper.dart';
import 'package:flashcards/domain/models/flashcards/flashcard/flashcard.dart';
import 'package:flashcards/domain/models/flashcards/tag/tag.dart';
import 'package:flashcards/utils/form_validations.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flashcards/utils/util_functions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpdateFlashcardCubit extends Cubit<UpdateFlashcardState> {
  final FlashcardRepository _flashcardRepo;
  final TagRepository _tagRepo;

  UpdateFlashcardCubit({
    required FlashcardRepository flashcardRepo,
    required TagRepository tagRepo,
    required Flashcard initialFlashcard,
  }) : _flashcardRepo = flashcardRepo,
       _tagRepo = tagRepo,
       super(
         UpdateFlashcardState(
           initialFlashcard: initialFlashcard,
           answerImageData: ImageDataWrapper(
             imageDownloadUrl: initialFlashcard.answerImageUrl,
           ),
           questionImageData: ImageDataWrapper(
             imageDownloadUrl: initialFlashcard.questionImageUrl,
           ),
         ),
       );


  /// Used for previewing flashcard
  Flashcard? generateFlashcardObject(
    String question,
    String answer,
    String packId,
  ) {
    if (state.allAvailableTags == null) {
      throw Exception("Tags not loaded when submitting flashcard");
    }

    final errors = _validateForm(question, answer);
    if (errors.isNotEmpty) {
      emit(
        state.copyWith(
          formErrors: errors,
          status: UpdateFlashcardStatus.formInvalid,
        ),
      );
      return null;
    }

    final fc = Flashcard(
      id: "",
      packId: packId,
      question: question,
      answer: answer,
      tags: state.selectedTags,
    );

    return fc;
  }

  void questionImageChanged(ImageDataWrapper questionImageData) {
    emit(state.copyWith(questionImageData: questionImageData));
  }

  void answerImageChanged(ImageDataWrapper answerImageData) {
    emit(state.copyWith(answerImageData: answerImageData));
  }

  void addTag(Tag tag) {
    if (state.selectedTags.length >= 10) {
      emit(state.copyWith(status: UpdateFlashcardStatus.tagInputError));
      return;
    }

    emit(
      state.copyWith(
        status: UpdateFlashcardStatus.initial,
        selectedTags: [...state.selectedTags, tag],
        error: null,
      ),
    );
  }

  void removeTag(Tag tag) {
    emit(
      state.copyWith(
        status: UpdateFlashcardStatus.initial,
        selectedTags: state.selectedTags.where((t) => t != tag).toList(),
        error: null,
      ),
    );
  }

  void getAllAvailableTags(List<Tag> selectedTags) async {
    emit(
      state.copyWith(
        status: UpdateFlashcardStatus.tagsLoading,
        error: null,
        formErrors: {},
        selectedTags: selectedTags,
      ),
    );

    final result = await _tagRepo.getAllTags();
    switch (result) {
      case Error<List<Tag>>(:final error):
        emit(state.copyWith(status: UpdateFlashcardStatus.error, error: error));
        return;
      case Ok<List<Tag>>():
    }

    emit(
      state.copyWith(
        status: UpdateFlashcardStatus.initial,
        allAvailableTags: result.value,
      ),
    );
  }

  void updateFlashcard({
    required String packId,
    required String flashcardId,
    required String question,
    required String answer,
  }) async {
    if (state.status.isTagsLoading || state.allAvailableTags == null) return;

    final errors = _validateForm(question, answer);
    if (errors.isNotEmpty) {
      emit(
        state.copyWith(
          status: UpdateFlashcardStatus.formInvalid,
          formErrors: errors,
          error: null,
        ),
      );
      return;
    }

    emit(state.copyWith(status: UpdateFlashcardStatus.loading, error: null));

    final updatedQuestion = valueIfChanged(
      state.initialFlashcard.question,
      question,
    );
    final updatedAnswer = valueIfChanged(state.initialFlashcard.answer, answer);
    final updatedTags = listIfChanged(
      state.initialFlashcard.tags,
      state.selectedTags,
    );

    final result = await _flashcardRepo.updateFlashcardEverywhere(
      packId: packId,
      flashcardId: flashcardId,
      allAvailableTags: state.allAvailableTags!,
      answer: updatedAnswer,
      question: updatedQuestion,
      selectedTags: updatedTags,
      oldTags: state.initialFlashcard.tags,
      questionImageData: state.questionImageData,
      answerImageData: state.answerImageData,
    );

    switch (result) {
      case Error<void>(:final error):
        emit(state.copyWith(status: UpdateFlashcardStatus.error, error: error));
        return;
      case Ok<void>():
    }
    emit(state.copyWith(status: UpdateFlashcardStatus.successful, error: null));
    getAllAvailableTags(state.selectedTags);
  }

  Map<String, String> _validateForm(String question, String answer) {
    final Map<String, String> errors = {};

    putErrorIfExists(errors, 'question', validateString(question));
    putErrorIfExists(errors, 'answer', validateString(answer));
    // if (question.isEmpty && answer.isEmpty) {
    //   putErrorIfExists(errors, 'question', "At least one field must be filled");
    //   putErrorIfExists(errors, 'answer', "At least one field must be filled");
    // }
    return errors;
  }
}
