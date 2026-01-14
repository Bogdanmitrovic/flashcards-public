import 'package:auto_route/annotations.dart';
import 'package:flashcards/ui/dialogs/packs/single_pack_bottom_sheet.dart';
import 'package:flashcards/ui/widgets/search/search_page/pack_search_page/pack_search_page_full.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PackSearchPage extends StatelessWidget {
  const PackSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PackSearchPageFull(
      onTap: (packId, hasCards) =>
          showSinglePackBottomSheet(context, packId, hasCards),
    );
  }
}
