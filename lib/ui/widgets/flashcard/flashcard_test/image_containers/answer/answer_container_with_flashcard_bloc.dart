import 'package:flashcards/bloc/flashcards/flashcard/flashcard_bloc.dart';
import 'package:flashcards/bloc/flashcards/flashcard/flashcard_state.dart';
import 'package:flashcards/ui/widgets/core/images/image_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnswerContainerWithFlashcardBloc extends StatelessWidget {
  const AnswerContainerWithFlashcardBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FlashcardBloc, FlashcardState>(
      builder: (context, state) {
        final flashcard = state.flashcard;
        if (flashcard == null) return SizedBox.shrink();
        if (flashcard.answerImageUrl == null) return SizedBox.shrink();

        return Center(
          child: ImagePreview(
            downloadUrl: flashcard.answerImageUrl!,
            height: 150,
            onTap: () => onUrlTap(context, flashcard.answerImageUrl!),
            showTextWhenEmpty: false,
          ),
        );
      },
    );
  }
}
