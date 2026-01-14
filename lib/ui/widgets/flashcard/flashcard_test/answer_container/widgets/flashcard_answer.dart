import 'package:flashcards/ui/theme/theme_extensions.dart';
import 'package:flutter/material.dart';

class FlashcardAnswer extends StatelessWidget {
  final String answer;
  final Widget? answerImagePreview;

  const FlashcardAnswer({
    super.key,
    required this.answer,
    this.answerImagePreview,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.colors.secondaryContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      alignment: Alignment.center,
      child: Column(
        children: [
          Text(
            answer,
            style: TextTheme.of(
              context,
            ).bodyLarge?.merge(TextStyle(color: context.colors.onSecondaryContainer)),
          ),
          SizedBox(height: 15),
          answerImagePreview ?? SizedBox.shrink(),
        ],
      ),
    );
  }
}
