import 'package:flashcards/ui/theme/theme_extensions.dart';
import 'package:flutter/material.dart';

class TagChip extends StatelessWidget {
  final String label;
  final VisualDensity? visualDensity;
  final VoidCallback? onDeleted;

  const TagChip({
    super.key,
    required this.label,
    this.visualDensity,
    this.onDeleted,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      onDeleted: onDeleted,
      visualDensity: visualDensity,
      label: Text(label),
      backgroundColor: context.colors.secondaryContainer,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: context.colors.onSecondaryContainer.withAlpha(50),
          width: 0.8,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      labelStyle: TextStyle(color: context.colors.onSecondaryContainer),
    );
  }
}
