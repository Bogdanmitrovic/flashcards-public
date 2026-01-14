import 'package:flashcards/ui/constants/styles.dart';
import 'package:flashcards/ui/widgets/search/search_overlay/pack_search_overlay.dart';
import 'package:flutter/material.dart';

void showSearchOverlay(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.grey.shade100,
    shape: bottomSheetShape,
    builder: (_) => const PackSearchOverlay(),
  );
}
