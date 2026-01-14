import 'package:flashcards/domain/models/flashcards/card_info_item/card_info_item.dart';
import 'package:flashcards/ui/theme/theme_extensions.dart';
import 'package:flutter/material.dart';

class CardMetaChipEnhanced extends StatelessWidget {
  final CardInfoItem item;

  const CardMetaChipEnhanced({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: item.tooltip,
      showDuration: const Duration(seconds: 4),
      triggerMode: TooltipTriggerMode.tap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: BoxDecoration(
          color: context.colors.surfaceContainerLowest,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(item.icon, size: 20, color: context.colors.primaryContainer),
            const SizedBox(width: 8),
            Text(
              "${item.label} ${item.value.isEmpty ? "" : ":  ${item.value}"}",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600, // semi-bold
                color: context.colors.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
