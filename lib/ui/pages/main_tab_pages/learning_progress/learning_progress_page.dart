import 'package:auto_route/auto_route.dart';
import 'package:flashcards/config/router/router.dart';
import 'package:flashcards/ui/constants/styles.dart';
import 'package:flashcards/ui/widgets/profile/profile_menu_widget.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LearningProgressPage extends StatelessWidget {
  const LearningProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: horizontalScreenPadding),
        child: Column(
          children: [
            ProfileMenuWidget(
              title: "Started packs",
              subtitle: "Reset progress for each pack here",
              icon: Icons.folder_open,
              onPress: () => context.router.push(const StartedPacksRoute()),
            ),
            ProfileMenuWidget(
              title: "Flashcards Progress",
              subtitle: "Browse flashcards and view your progress",
              icon: Icons.question_answer_outlined,
              onPress: () => context.router.push(const FlashcardsSearcherRoute()),
            ),
          ],
        ),
      ),
    );
  }
}
