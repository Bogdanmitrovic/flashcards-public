import 'package:flashcards/bloc/pack/pack_searcher/pack_searcher_bloc.dart';
import 'package:flashcards/bloc/pack/pack_searcher/pack_searcher_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PackItemCount extends StatelessWidget {
  const PackItemCount({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PackSearcherBloc, PackSearcherState>(
      builder: (context, state) {
        return SliverToBoxAdapter(
          child: Center(
            child: Text(
              "${state.hitsCount} ${state.hitsCount == 1 ? "item" : "items"} found",
            ),
          ),
        );
      },
    );
  }
}
