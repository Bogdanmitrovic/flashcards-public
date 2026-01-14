import 'package:flutter/material.dart';

class BannerPlaceholder extends StatelessWidget {
  final double height;
  final double width;

  const BannerPlaceholder({
    super.key,
    this.height = 200,
    this.width = double.infinity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white,
      ),
    );
  }
}

class RoundedPlaceholder extends StatelessWidget {
  final bool fullyRounded;
  final double width;
  final double height;

  const RoundedPlaceholder({
    super.key,
    this.fullyRounded = true,
    this.width = 20,
    this.height = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(fullyRounded ? 100 : 8),
        color: Colors.white,
      ),
    );
  }
}

class TitlePlaceholder extends StatelessWidget {
  final bool isTwoLine;
  final double width;

  const TitlePlaceholder({
    super.key,
    required this.width,
    this.isTwoLine = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(width: width, height: 12.0, color: Colors.white),
        if (isTwoLine) const SizedBox(height: 8.0),
        if (isTwoLine)
          Container(width: width, height: 12.0, color: Colors.white),
      ],
    );
  }
}

enum ContentLineType { twoLines, threeLines }

class ContentPlaceholder extends StatelessWidget {
  final ContentLineType lineType;

  const ContentPlaceholder({super.key, required this.lineType});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 96.0,
          height: 72.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 12.0),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 10.0,
                color: Colors.white,
                margin: const EdgeInsets.only(bottom: 8.0),
              ),
              if (lineType == ContentLineType.threeLines)
                Container(
                  width: double.infinity,
                  height: 10.0,
                  color: Colors.white,
                  margin: const EdgeInsets.only(bottom: 8.0),
                ),
              Container(width: 100.0, height: 10.0, color: Colors.white),
            ],
          ),
        ),
      ],
    );
  }
}

class ContentNoBannerPlaceholder extends StatelessWidget {
  final ContentLineType lineType;

  const ContentNoBannerPlaceholder({super.key, required this.lineType});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 10.0,
                color: Colors.white,
                margin: const EdgeInsets.only(bottom: 8.0),
              ),
              if (lineType == ContentLineType.threeLines)
                Container(
                  width: double.infinity,
                  height: 10.0,
                  color: Colors.white,
                  margin: const EdgeInsets.only(bottom: 8.0),
                ),
              Container(width: 100.0, height: 10.0, color: Colors.white),
            ],
          ),
        ),
      ],
    );
  }
}
