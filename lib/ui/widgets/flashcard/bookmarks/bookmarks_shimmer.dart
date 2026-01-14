import 'package:flashcards/ui/constants/placeholders.dart';
import 'package:flashcards/ui/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class BookmarksShimmer extends StatelessWidget {
  const BookmarksShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: shimmerBaseColor(context),
      highlightColor: shimmerHighlightColor(context),
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalScreenPadding),
          child: Column(
            children: [
              BannerPlaceholder(height: 120),
              BannerPlaceholder(height: 120),
              BannerPlaceholder(height: 120),
              BannerPlaceholder(height: 120),
              BannerPlaceholder(height: 120),
              BannerPlaceholder(height: 120),
              BannerPlaceholder(height: 120),
              BannerPlaceholder(height: 120),
            ],
          ),
        ),
      ),
    );
  }
}
