import 'package:flashcards/ui/constants/placeholders.dart';
import 'package:flashcards/ui/constants/styles.dart';
import 'package:flashcards/ui/theme/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PackShimmer extends StatelessWidget {
  const PackShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          _Card(),
          _Card(),
          _Card(),
          _Card(),
          _Card(),
          _Card(),
          _Card(),
          _Card(),
          _Card(),
          _Card(),
          _Card(),
          _Card(),
        ],
      ),
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: shimmerBaseColor(context),
      highlightColor: shimmerHighlightColor(context),
      child: Container(
        margin: EdgeInsets.only(bottom: 12),
        child: ListTile(
          tileColor: context.colors.secondaryContainer.withValues(alpha: 0.6),
          leading: RoundedPlaceholder(height: 35, width: 35),
          title: TitlePlaceholder(width: double.infinity, isTwoLine: false),
        ),
      ),
    );
  }
}
