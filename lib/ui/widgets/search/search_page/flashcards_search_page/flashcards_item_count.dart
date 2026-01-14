import 'package:flashcards/bloc/flashcards/flashcards_searcher/flashcards_searcher_bloc.dart';
import 'package:flashcards/bloc/flashcards/flashcards_searcher/flashcards_searcher_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FlashcardsItemCount extends StatelessWidget {
  const FlashcardsItemCount({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FlashcardsSearcherBloc, FlashcardsSearcherState>(
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
