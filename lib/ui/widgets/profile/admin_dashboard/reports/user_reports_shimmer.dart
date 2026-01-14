import 'package:flashcards/ui/constants/placeholders.dart';
import 'package:flashcards/ui/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class UserReportsShimmer extends StatelessWidget {
  const UserReportsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
      elevation: 2,
      child: Shimmer.fromColors(
        baseColor: shimmerBaseColor(context),
        highlightColor: shimmerHighlightColor(context),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              TitlePlaceholder(width: 150, isTwoLine: false),

              SizedBox(),

              ContentNoBannerPlaceholder(lineType: ContentLineType.threeLines),
            ],
          ),
        ),
      ),
    );
  }
}
