import 'package:auto_route/auto_route.dart';
import 'package:flashcards/bloc/flashcards/flashcard/flashcard_bloc.dart';
import 'package:flashcards/bloc/flashcards/flashcard/flashcard_event.dart';
import 'package:flashcards/bloc/flashcards/flashcard/flashcard_state.dart';
import 'package:flashcards/config/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FcBlocStatusListener extends StatelessWidget {
  final Widget child;
  final TestType testType;

  const FcBlocStatusListener({
    super.key,
    required this.child,
    required this.testType,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<FlashcardBloc, FlashcardState>(
      listenWhen: (previous, current) => previous != current,
      listener: (context, state) {
        switch (state.status) {
          case FlashcardStatus.packFinished:
            // showPackFinishedDialog(context, subTextForDialog);
            context.router.push(PackFinishedRoute(testType: testType));
            break;
          case FlashcardStatus.sessionEnded:
            // showSessionEndedDialog(
            //   context,
            //   context.read<FlashcardBloc>(),
            // );
            context.router.push(
              FlashcardSessionSuccessRoute(
                fcBloc: context.read<FlashcardBloc>(),
              ),
            );
            break;
          case FlashcardStatus.error:
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.errorMessage!)));
            break;
          default:
            break;
        }
      },
      child: child,
    );
  }
}
