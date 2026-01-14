import 'package:flashcards/bloc/flashcards/delete_flashcard/delete_flashcard_state.dart';
import 'package:flashcards/data/repositories/flashcards/flashcard_repository.dart';
import 'package:flashcards/domain/models/flashcards/flashcard/flashcard.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeleteFlashcardCubit extends Cubit<DeleteFlashcardState> {
  final FlashcardRepository _flashcardRepo;

  DeleteFlashcardCubit({required FlashcardRepository fcRepo})
    : _flashcardRepo = fcRepo,
      super(DeleteFlashcardInitial());

  void deleteFlashcard(Flashcard flashcard) async {
    final state = this.state;
    if (state is! DeleteFlashcardInitial) {
      return;
    }
    emit(DeleteFlashcardLoading());

    final result = await _flashcardRepo.deleteFlashcardEverywhere(flashcard);
    switch (result) {
      case Error<void>(:final error):
        emit(DeleteFlashcardError(error: error));
        return;
      case Ok<void>():
    }

    emit(DeleteFlashcardSuccess());
  }
}
