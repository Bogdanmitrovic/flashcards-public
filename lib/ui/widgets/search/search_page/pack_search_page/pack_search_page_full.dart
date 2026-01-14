import 'package:flashcards/bloc/pack/pack_searcher/pack_searcher_bloc.dart';
import 'package:flashcards/data/repositories/algolia_search/packs_searcher_repository.dart';
import 'package:flashcards/ui/widgets/search/search_page/pack_search_page/pack_filter_options.dart';
import 'package:flashcards/ui/widgets/search/search_page/pack_search_page/pack_item_count.dart';
import 'package:flashcards/ui/widgets/search/search_page/pack_search_page/pack_search_bar.dart';
import 'package:flashcards/ui/widgets/search/search_page/pack_search_page/pack_search_results.dart';
import 'package:flashcards/ui/widgets/search/search_page/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PackSearchPageFull extends StatelessWidget {
  final void Function(String packId, bool? hasCards)? onTap;
  final bool searchBarAsTitle;
  final Widget? title;

  const PackSearchPageFull({
    super.key,
    this.onTap,
    this.searchBarAsTitle = true,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => PackSearcherBloc(
            packSearcherRepo: context.read<PacksSearcherRepository>(),
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
  final Function(String packId, bool? hasCards)? onTap;
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

  // @override
  // void initState() {
  //   super.initState();
  //   context.read<PackSearcherBloc>().add(PackSearcherRequestSent(query: ''));
  // }

  @override
  Widget build(BuildContext context) {
    return SearchPage(
      searchBar: PackSearchBar(cont: _queryCont),
      searchResults: PackSearchResults(onTap: widget.onTap),
      filterOptions: PackFilterOptions(),
      itemCount: PackItemCount(),
      searchBarAsTitle: widget.searchBarAsTitle,
      title: widget.title,
      // drawerSubtitle: 'Choose tags to filter flashcard packs more easily',
      // drawerTitle: 'Find the Right Packs',
    );
  }
}
