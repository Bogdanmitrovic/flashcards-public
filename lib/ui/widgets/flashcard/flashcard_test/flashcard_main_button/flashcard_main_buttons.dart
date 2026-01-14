import 'package:flashcards/bloc/flashcards/flashcard/flashcard_bloc.dart';
import 'package:flashcards/bloc/flashcards/flashcard/flashcard_event.dart';
import 'package:flashcards/bloc/flashcards/flashcard/flashcard_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flashcards/l10n/app_localizations.dart';

class FlashcardMainButtons extends StatelessWidget {
  const FlashcardMainButtons({super.key});

  @override
  Widget build(BuildContext context) {
    void onShowAnswer() {
      context.read<FlashcardBloc>().add(FlashcardAnswerShown());
    }

    void onSkip() {
      //context.read<FlashcardBloc>().add(FlashcardGiveScore(score: 0));
    }

    double height = 50;

    return BlocBuilder<FlashcardBloc, FlashcardState>(
      builder: (context, state) {
        bool enabled = false;
        if ((state.status.isLoaded || state.flashcard != null) &&
            !state.answerVisible) {
          enabled = true;
        }
        //bool showSkip = false;
        // if (state.currentCardIndex != 0 || state.currentBatch != 0) {
        //   showSkip = true;
        // }

        return Row(
          children: [
            // if (showSkip)
            // Expanded(
            //   child: SizedBox(
            //     height: height,
            //     child: OutlinedButton(
            //       onPressed: enabled ? onSkip : null,
            //       style: OutlinedButton.styleFrom(
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.only(
            //             topRight: Radius.zero,
            //             bottomRight: Radius.zero,
            //             topLeft: Radius.circular(500),
            //             bottomLeft: Radius.circular(500),
            //           ),
            //         ),
            //         //side: BorderSide.none,
            //       ),
            //       child: Text(AppLocalizations.of(context)!.flashcardMainButton_skip),
            //     ),
            //   ),
            // ),
            Expanded(
              child: SizedBox(
                height: height,
                child: FilledButton(
                  style: FilledButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                  onPressed: enabled ? onShowAnswer : null,
                  child: Text(
                    AppLocalizations.of(context)!.flashcardMainButton_reveal,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
