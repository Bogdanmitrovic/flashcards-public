import 'package:flashcards/ui/constants/placeholders.dart';
import 'package:flashcards/ui/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class FlashcardsReportShimmer extends StatelessWidget {
  const FlashcardsReportShimmer({super.key});

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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.symmetric(vertical: 6),
      elevation: 4,
      child: Shimmer.fromColors(
        highlightColor: shimmerHighlightColor(context),
        baseColor: shimmerBaseColor(context),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TitlePlaceholder(width: 150, isTwoLine: false),
                  RoundedPlaceholder(fullyRounded: false, width: 30),
                ],
              ),

              SizedBox(),

              ContentNoBannerPlaceholder(lineType: ContentLineType.threeLines),

              SizedBox(),

              RoundedPlaceholder(fullyRounded: false, width: 70, height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
