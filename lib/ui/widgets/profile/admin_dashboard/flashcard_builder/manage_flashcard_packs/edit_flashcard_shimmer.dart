import 'package:flashcards/ui/constants/placeholders.dart';
import 'package:flashcards/ui/constants/styles.dart';
import 'package:flashcards/ui/theme/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class EditFlashcardShimmer extends StatelessWidget {
  const EditFlashcardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        spacing: 10,
        children: [
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
    return Card(
      color: context.colors.secondaryContainer.withValues(alpha: 0.6),
      elevation: 2,
      child: Shimmer.fromColors(
        baseColor: shimmerBaseColor(context),
        highlightColor: shimmerHighlightColor(context),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              ContentNoBannerPlaceholder(lineType: ContentLineType.threeLines),
              SizedBox(height: 25),
              ContentNoBannerPlaceholder(lineType: ContentLineType.threeLines),
            ],
          ),
        ),
      ),
    );
  }
}
