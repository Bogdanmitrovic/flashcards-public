import 'package:flashcards/ui/constants/placeholders.dart';
import 'package:flashcards/ui/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class OsceListShimmer extends StatelessWidget {
  const OsceListShimmer({super.key});

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
      margin: EdgeInsets.only(bottom: 16),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Shimmer.fromColors(
        highlightColor: shimmerHighlightColor(context),
        baseColor: shimmerBaseColor(context),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitlePlaceholder(width: 100, isTwoLine: false),

              SizedBox(height: 16),

              ContentNoBannerPlaceholder(lineType: ContentLineType.threeLines),
            ],
          ),
        ),
      ),
    );
  }
}
