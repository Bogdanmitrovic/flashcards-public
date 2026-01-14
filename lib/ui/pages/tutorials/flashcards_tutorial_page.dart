import 'package:auto_route/auto_route.dart';
import 'package:flashcards/ui/widgets/tutorial/tutorial_page_template.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FlashcardsTutorialPage extends StatelessWidget {
  final VoidCallback? onFinish;

  const FlashcardsTutorialPage({super.key, this.onFinish});

  final List<TutorialSlide> _slides = const [
    TutorialSlide(
      icon: Icons.style,
      title: "Learning with Flashcards",
      description:
          "Flashcards use spaced repetition to calculate the optimal time "
          "for review. Each pack shows how many cards are due, so you always "
          "know what to study next.",
    ),
    TutorialSlide(
      icon: Icons.layers,
      title: "Starting a Test Session",
      description:
          "Tap the pack you want to study.\n"
          "Each session mixes 80% review cards with 20% new ones. "
          "This ensures you strengthen old knowledge while gradually "
          "adding new material.",
    ),
    TutorialSlide(
      assetPath: "assets/images/flashcards_tutorial/question_demo.jpg",
      title: "Question First",
      description:
          "Each card begins with a question. Take a moment to recall the answer "
          "— silently or out loud.",
    ),
    TutorialSlide(
      assetPath: "assets/images/flashcards_tutorial/answer_demo.jpg",
      title: "Reveal the Answer",
      description: "Tap Reveal to check the correct answer. ",
    ),
    TutorialSlide(
      assetPath: "assets/images/flashcards_tutorial/actions_demo.jpg",
      title: "Rate Your Recall",
      description:
          "After seeing the answer, rate how well you remembered. "
          "Be honest — your choice determines when this card will reappear. \n\n"
          "Tip — you can hold down the rating button to see what it means.",
    ),
    TutorialSlide(
      assetPath: "assets/images/parrot_chest.png",
      title: "Optimized Scheduling",
      description:
          "Your responses are processed by the FSRS algorithm, which calculates "
          "the optimal review time for each card. This way, you see information "
          "again exactly when you’re most likely to forget it.",
    ),
    TutorialSlide(
      assetPath: "assets/images/parrot_fire.png",
      title: "Completing a Session",
      description:
          "Each session includes a fixed number of cards (adjustable in settings). "
          "Once all cards are reviewed, the session ends, and you are ready for "
          "the next optimal review.",
    ),
    TutorialSlide(
      assetPath: "assets/images/parrot_weights.png",
      title: "Let’s Do This!",
      description: "Great! Time to put your knowledge into action.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return TutorialPageTemplate(slides: _slides, onFinish: onFinish,);
  }
}
