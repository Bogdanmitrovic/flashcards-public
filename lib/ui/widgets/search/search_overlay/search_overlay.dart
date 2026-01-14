import 'package:flashcards/ui/constants/styles.dart';
import 'package:flashcards/ui/widgets/search/core_widgets/filter_drawer_custom.dart';
import 'package:flutter/material.dart';

class SearchOverlay extends StatefulWidget {
  final Widget searchBar;
  final Widget searchResults;
  final Widget filterOptions;

  const SearchOverlay({
    super.key,
    required this.searchBar,
    required this.searchResults,
    required this.filterOptions,
  });

  @override
  State<SearchOverlay> createState() => _SearchOverlayState();
}

class _SearchOverlayState extends State<SearchOverlay> {
  bool _showFilters = false;

  void _toggleFilters() {
    setState(() {
      _showFilters = !_showFilters;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 1,
      minChildSize: 1,
      maxChildSize: 1,
      builder: (context, scrollController) {
        return Stack(
          children: [
            Container(
              padding: bottomSheetPaddingWithTop,
              child: Column(
                children: [
                  Row(
                    spacing: 5,
                    children: [
                      Expanded(child: widget.searchBar),
                      IconButton(
                        icon: const Icon(Icons.filter_alt),
                        onPressed: _toggleFilters,
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Expanded(child: widget.searchResults),
                ],
              ),
            ),

            // FilterDrawer(
            //   show: _showFilters,
            //   onClose: _toggleFilters,
            //   filterOptions: widget.filterOptions,
            // ),
          ],
        );
      },
    );
  }
}
