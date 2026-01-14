import 'package:flashcards/bloc/flashcards/flashcard/flashcard_bloc.dart';
import 'package:flashcards/bloc/flashcards/flashcard/flashcard_event.dart';
import 'package:flashcards/bloc/flashcards/flashcard/flashcard_state.dart';
import 'package:flashcards/ui/widgets/flashcard/flashcard_test/flashcard_main_button/widgets/reveal_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainButtonWithFlashcardBloc extends StatelessWidget {
  const MainButtonWithFlashcardBloc({super.key});

  @override
  Widget build(BuildContext context) {
    void onShowAnswer() {
      context.read<FlashcardBloc>().add(FlashcardAnswerShown());
    }

    return BlocBuilder<FlashcardBloc, FlashcardState>(
      builder: (context, state) {
        bool enabled = false;
        if ((state.status.isLoaded || state.flashcard != null) &&
            !state.answerVisible) {
          enabled = true;
        }

        return RevealButton(enabled: enabled, onShowAnswer: onShowAnswer);
      },
    );
  }
}
