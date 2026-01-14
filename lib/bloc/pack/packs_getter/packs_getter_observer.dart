import 'package:flashcards/bloc/pack/packs_getter/packs_getter_bloc.dart';
import 'package:flashcards/bloc/pack/packs_getter/packs_getter_event.dart';
import 'package:flashcards/domain/models/flashcards/pack/pack.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class PacksGetterObserver extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);

    if (bloc is PacksGetterBloc) {
      final currentState = transition.currentState as PagingState<int, Pack>;
      final nextState = transition.nextState as PagingState<int, Pack>;
      final event = transition.event as PacksGetterEvent;

      print("");
      print("Current state");
      printPackState(currentState);

      print("Next state");
      printPackState(nextState);

      print(event);
    }
  }
}

void printPackState(PagingState<int, Pack> state) {
  final lastKey = state.keys?.last;
  print("Current page: $lastKey");
  final pages = state.pages ?? [];
  print(
    "Number of pages from last page: ${pages.isEmpty ? 0 : pages[lastKey != null ? lastKey - 1 : 0].length}",
  );
  print("isLoading: ${state.isLoading}");
  print("hasNextPage: ${state.hasNextPage}");
}
