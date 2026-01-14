import 'package:flashcards/bloc/flashcards/session_test/session_test_bloc.dart';
import 'package:flashcards/bloc/flashcards/session_test/session_test_state.dart';
import 'package:flashcards/ui/widgets/core/images/image_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuestionContainerWithSessionBloc extends StatelessWidget {
  const QuestionContainerWithSessionBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<SessionTestBloc, SessionTestState, String?>(
      selector: (state) {
        if (state is! SessionTestLoaded) {
          throw Exception("Session not in loaded state");
        }

        return state.statRecord.flashcard!.questionImageUrl;
      },
      builder: (context, questionImageUrl) {
        if (questionImageUrl == null) return SizedBox.shrink();

        return Center(
          child: ImagePreview(
            downloadUrl: questionImageUrl,
            height: 150,
            onTap: () => onUrlTap(context, questionImageUrl),
            showTextWhenEmpty: false,
          ),
        );
      },
    );
  }
}
