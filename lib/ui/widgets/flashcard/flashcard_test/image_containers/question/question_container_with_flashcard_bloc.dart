import 'package:flashcards/bloc/flashcards/flashcard/flashcard_bloc.dart';
import 'package:flashcards/bloc/flashcards/flashcard/flashcard_state.dart';
import 'package:flashcards/ui/widgets/core/images/image_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuestionContainerWithFlashcardBloc extends StatelessWidget {
  const QuestionContainerWithFlashcardBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FlashcardBloc, FlashcardState>(
      builder: (context, state) {
        final flashcard = state.flashcard;
        if (flashcard == null) return SizedBox.shrink();
        if (flashcard.questionImageUrl == null) return SizedBox.shrink();

        return Center(
          child: ImagePreview(
            downloadUrl: flashcard.questionImageUrl!,
            height: 200,
            onTap: () => onUrlTap(context, flashcard.questionImageUrl!),
            showTextWhenEmpty: false,
          ),
        );
      },
    );
  }
}
