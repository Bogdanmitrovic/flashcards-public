import 'package:flashcards/ui/theme/theme_extensions.dart';
import 'package:flutter/material.dart';

class CustomDragHandle extends StatelessWidget {
  const CustomDragHandle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 10, bottom: 12),
        width: 36,
        height: 4,
        decoration: BoxDecoration(
          color: context.colors.onSurfaceVariant,
          borderRadius: BorderRadius.circular(1.5),
        ),
      ),
    );
  }
}
