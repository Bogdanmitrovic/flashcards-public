import 'package:flashcards/bloc/flashcards/flashcards_searcher/flashcards_searcher_bloc.dart';
import 'package:flashcards/data/repositories/algolia_search/flashcards_searcher_repository.dart';
import 'package:flashcards/domain/models/algolia/algolia_flashcard/algolia_flashcard.dart';
import 'package:flashcards/ui/widgets/search/search_page/flashcards_search_page/flashcards_filter_options.dart';
import 'package:flashcards/ui/widgets/search/search_page/flashcards_search_page/flashcards_item_count.dart';
import 'package:flashcards/ui/widgets/search/search_page/flashcards_search_page/flashcards_search_bar.dart';
import 'package:flashcards/ui/widgets/search/search_page/flashcards_search_page/flashcards_search_results.dart';
import 'package:flashcards/ui/widgets/search/search_page/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FlashcardsSearchPageFull extends StatelessWidget {
  final void Function(AlgoliaFlashcard flahscard, bool hasCards)? onTap;
  final bool searchBarAsTitle;
  final Widget? title;

  const FlashcardsSearchPageFull({
    super.key,
    this.onTap,
    this.searchBarAsTitle = true,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => FlashcardsSearcherBloc(
            flashcardsSearcherRepository:
                context.read<FlashcardsSearcherRepository>(),
          ),
      child: _View(
        onTap: onTap,
        searchBarAsTitle: searchBarAsTitle,
        title: title,
      ),
    );
  }
}

class _View extends StatefulWidget {
  final void Function(AlgoliaFlashcard flahscard, bool hasCards)? onTap;
  final bool searchBarAsTitle;
  final Widget? title;

  const _View({
    super.key,
    this.onTap,
    required this.searchBarAsTitle,
    required this.title,
  });

  @override
  State<_View> createState() => _ViewState();
}

class _ViewState extends State<_View> {
  late final TextEditingController _queryCont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SearchPage(
      searchBar: FlashcardsSearchBar(cont: _queryCont),
      searchResults: FlashcardsSearchResults(onTap: widget.onTap),
      filterOptions: FlashcardsFilterOptions(),
      itemCount: FlashcardsItemCount(),
      searchBarAsTitle: widget.searchBarAsTitle,
      title: widget.title,
      // drawerSubtitle: 'Choose tags to filter flashcard packs more easily',
      // drawerTitle: 'Find the Right Packs',
    );
  }
}
