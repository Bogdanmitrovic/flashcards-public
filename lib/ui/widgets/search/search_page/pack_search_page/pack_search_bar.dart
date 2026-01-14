import 'package:flashcards/bloc/pack/pack_searcher/pack_searcher_bloc.dart';
import 'package:flashcards/bloc/pack/pack_searcher/pack_searcher_event.dart';
import 'package:flashcards/ui/widgets/search/core_widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PackSearchBar extends StatelessWidget {
  final TextEditingController cont;

  const PackSearchBar({super.key, required this.cont});

  @override
  Widget build(BuildContext context) {
    void onChanged(String value) {
      context.read<PackSearcherBloc>().add(
        PackSearcherRequestSent(query: value),
      );
    }

    void onSubmit(String value) {
      context.read<PackSearcherBloc>().add(
        PackSearcherRequestSent(query: value),
      );
    }

    return CustomSearchBar(
      onChanged: onChanged,
      onSubmit: onSubmit,
      controller: cont,
    );
  }
}
