import 'package:flashcards/ui/constants/placeholders.dart';
import 'package:flashcards/ui/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class FcReviewShimmer extends StatelessWidget {
  const FcReviewShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: shimmerBaseColor(context),
      highlightColor: shimmerHighlightColor(context),
      child: const SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            BannerPlaceholder(height: 150),
            BannerPlaceholder(height: 150),
            TitlePlaceholder(width: double.infinity),
            SizedBox(height: 16.0),
            ContentPlaceholder(lineType: ContentLineType.threeLines),
          ],
        ),
      ),
    );
  }
}
