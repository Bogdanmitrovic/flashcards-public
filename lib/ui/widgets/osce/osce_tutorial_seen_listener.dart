import 'package:auto_route/auto_route.dart';
import 'package:flashcards/bloc/flashcards/flashcard/flashcard_bloc.dart';
import 'package:flashcards/bloc/flashcards/flashcard/flashcard_event.dart';
import 'package:flashcards/bloc/flashcards/flashcard/flashcard_state.dart';
import 'package:flashcards/bloc/osces/osce/osce_bloc.dart';
import 'package:flashcards/bloc/osces/osce/osce_event.dart';
import 'package:flashcards/bloc/osces/osce/osce_state.dart';
import 'package:flashcards/config/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OsceTutorialSeenListener extends StatelessWidget {
  final Widget child;

  const OsceTutorialSeenListener({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocListener<OsceBloc, OsceState>(
      listenWhen: (previous, current) => current is OsceShowcase,
      listener: (context, state) {
        if (state is! OsceShowcase) return;

        if (state.tutorialSeen == false) {
          context.router.push(
            OsceTutorialRoute(
              onFinish: () =>
                  context.read<OsceBloc>().add(OsceTutorialFinished()),
            ),
          );
        }
      },
      child: child,
    );
  }
}
