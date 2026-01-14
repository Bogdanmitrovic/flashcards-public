import 'package:flashcards/bloc/flashcards/session_test/session_test_bloc.dart';
import 'package:flashcards/bloc/flashcards/session_test/session_test_event.dart';
import 'package:flashcards/bloc/flashcards/session_test/session_test_state.dart';
import 'package:flashcards/ui/widgets/flashcard/flashcard_test/flashcard_main_button/widgets/reveal_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainButtonWithSessionBloc extends StatelessWidget {
  const MainButtonWithSessionBloc({super.key});

  @override
  Widget build(BuildContext context) {
    void onShowAnswer() {
      context.read<SessionTestBloc>().add(SessionTestAnswerShown());
    }

    return BlocSelector<SessionTestBloc, SessionTestState, bool?>(
      selector: (state) {
        if (state is! SessionTestLoaded) {
          throw Exception("State is not loaded");
        }

        if (state.status.isNoFlashcard) return null;

        return state.answerShown;
      },
      builder: (context, answerShown) {
        //print("Main button rebuild-ed");
        if (answerShown == null) {
          return SizedBox.shrink();
        }
        return RevealButton(enabled: !answerShown, onShowAnswer: onShowAnswer);
      },
    );
  }
}
