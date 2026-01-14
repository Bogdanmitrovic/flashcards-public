import 'package:flashcards/bloc/flashcards/session_test/session_test_bloc.dart';
import 'package:flashcards/bloc/flashcards/session_test/session_test_state.dart';
import 'package:flashcards/ui/widgets/flashcard/flashcard_test/answer_container/widgets/flashcard_answer.dart';
import 'package:flashcards/ui/widgets/flashcard/flashcard_test/image_containers/answer/answer_container_with_session_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnswerWithSessionBloc extends StatelessWidget {
  const AnswerWithSessionBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<SessionTestBloc, SessionTestState, String?>(
      selector: (state) {
        if (state is! SessionTestLoaded) {
          throw Exception("State is not loaded state");
        }

        if (state.status.isNoFlashcard) {
          return null;
        }

        if (state.answerShown) {
          return state.statRecord.flashcard!.answer;
        } else {
          return null;
        }
      },
      builder: (context, answer) {
        //print("Answer rebuild-ed");

        if (answer == null) return SizedBox.shrink();

        return FlashcardAnswer(
          answer: answer,
          answerImagePreview: AnswerContainerWithSessionBloc(),
        );
      },
    );
  }
}
