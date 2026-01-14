import 'package:flashcards/ui/theme/theme_extensions.dart';
import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  final String question;

  const QuestionText({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Text(
      question,
      style: TextStyle(color: context.colors.onPrimaryContainer, fontSize: 18),
    );
  }
}
