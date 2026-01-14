import 'package:flutter/material.dart';


/// ✨ Shimmer colors
Color shimmerBaseColor(BuildContext context) =>
    Theme.of(context).brightness == Brightness.dark
        ? Colors.grey.shade800
        : Colors.grey.shade300;

Color shimmerHighlightColor(BuildContext context) =>
    Theme.of(context).brightness == Brightness.dark
        ? Colors.grey.shade700
        : Colors.grey.shade100;

final double horizontalScreenPadding = 25;
final double bottomSpacingOnFloatingButtons = 70;

final double bottomSheetHorizontalPaddingValue = 20;
final bottomSheetHorizontalPadding = EdgeInsets.symmetric(
  horizontal: bottomSheetHorizontalPaddingValue,
);
final bottomSheetPadding = EdgeInsets.only(
  bottom: 70,
  left: bottomSheetHorizontalPaddingValue,
  right: bottomSheetHorizontalPaddingValue,
);
final bottomSheetPaddingNoBot = EdgeInsets.only(
  bottom: 10,
  left: bottomSheetHorizontalPaddingValue,
  right: bottomSheetHorizontalPaddingValue,
);
final bottomSheetPaddingWithTop = EdgeInsets.only(
  bottom: 70,
  left: bottomSheetHorizontalPaddingValue,
  right: bottomSheetHorizontalPaddingValue,
  top: 15,
);
final bottomSheetShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
);

final flashcardPagePadding = EdgeInsets.only(
  left: horizontalScreenPadding,
  right: horizontalScreenPadding,
  bottom: 40,
  top: 15,
);
