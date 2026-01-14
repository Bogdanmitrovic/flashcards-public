import 'package:auto_route/auto_route.dart';
import 'package:flashcards/bloc/flashcards/flashcard/flashcard_bloc.dart';
import 'package:flashcards/bloc/flashcards/flashcard/flashcard_event.dart';
import 'package:flashcards/bloc/flashcards/flashcard/flashcard_state.dart';
import 'package:flashcards/config/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TutorialSeenListenerWithFcBloc extends StatelessWidget {
  final Widget child;

  const TutorialSeenListenerWithFcBloc({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocListener<FlashcardBloc, FlashcardState>(
      listenWhen: (previous, current) =>
          previous.tutorialSeen != current.tutorialSeen,
      listener: (context, state) {
        if (state.tutorialSeen == false) {
          context.router.push(
            FlashcardsTutorialRoute(
              onFinish: () => context.read<FlashcardBloc>().add(
                FlashcardTutorialFinished(),
              ),
            ),
          );
        }
      },
      child: child,
    );
  }
}
