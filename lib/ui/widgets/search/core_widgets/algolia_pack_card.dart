import 'package:flashcards/domain/models/algolia/algolia_pack/algolia_pack.dart';
import 'package:flashcards/ui/theme/theme_extensions.dart';
import 'package:flashcards/ui/widgets/core/subs_status_icon.dart';
import 'package:flutter/material.dart';

class AlgoliaPackCard extends StatelessWidget {
  final VoidCallback? onTap;
  final AlgoliaPack pack;
  final bool? hasCards;

  const AlgoliaPackCard({
    super.key,
    required this.pack,
    this.onTap,
    required this.hasCards,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        onTap: onTap,
        tileColor: context.colors.secondaryContainer.withValues(alpha: 0.6),
        leading: Icon(
          Icons.folder,
          color: context.colors.onSecondaryContainer,
        ),
        trailing: SubsStatusIcon(
          isPaid: pack.isPaid,
          hasAccess: hasCards,
          size: 20,
        ),
        title: Text(
          pack.name,
          style: TextStyle(color: context.colors.onSecondaryContainer),
        ),
      ),
    );
  }
}
