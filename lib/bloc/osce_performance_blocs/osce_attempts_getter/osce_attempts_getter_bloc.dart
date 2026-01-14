import 'package:flashcards/bloc/osce_performance_blocs/osce_attempts_getter/osce_attempts_getter_event.dart';
import 'package:flashcards/bloc/osce_performance_blocs/osce_attempts_getter/osce_attempts_getter_state.dart';
import 'package:flashcards/bloc/utils/utils.dart';
import 'package:flashcards/data/repositories/osces/osce_performance_repository.dart';
import 'package:flashcards/domain/models/osce/osce_performance/osce_attempt/osce_attempt.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flashcards/utils/util_functions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class OsceAttemptGetterBloc
    extends Bloc<OsceAttemptsGetterEvent, OsceAttemptsGetterState> {
  final OscePerformanceRepository _repo;
  final _pageSize = 20;

  OsceAttemptGetterBloc({
    required OscePerformanceRepository perfRepo,
    required String osceId,
  }) : _repo = perfRepo,
       super(
         OsceAttemptsGetterState(
           pagingState: PagingState(hasNextPage: false),
           osceId: osceId,
         ),
       ) {
    on<OsceAttemptsGetterRefresh>(_onRefresh);
    on<OsceAttemptsGetterFetched>(_onFetched);
    on<OsceAttemptsRemoved>(_onRemoved);
  }

  void fetchNextPage() => add(OsceAttemptsGetterFetched());

  void _onRemoved(
    OsceAttemptsRemoved event,
    Emitter<OsceAttemptsGetterState> emit,
  ) {
    final state = this.state;
    final pagingState = state.pagingState;
    if (pagingState.isLoading) return;

    final pages = pagingState.pages;
    var newPages = pages;
    if (pages != null) {
      newPages = removeElementFromPage(
        pages,
        (element) => element.id == event.attemptId,
      );
    }

    emit(state.copyWith(pagingState: pagingState.copyWith(pages: newPages)));
  }

  void _onFetched(
    OsceAttemptsGetterFetched event,
    Emitter<OsceAttemptsGetterState> emit,
  ) async {
    if (state.pagingState.isLoading) return;

    if (!event.restart) {
      emit(
        state.copyWith(
          pagingState: state.pagingState.copyWith(isLoading: true, error: null),
        ),
      );
    } else {
      emit(
        state.copyWith(
          pagingState: PagingState(
            hasNextPage: false,
            isLoading: true,
            error: null,
          ),
        ),
      );
    }

    final newKey = getNewKey(event.restart ? null : state.pagingState.keys);

    final getResult = await _repo.getAttemptsPage(
      osceId: state.osceId,
      pageIndex: newKey,
      pageSize: _pageSize,
    );
    switch (getResult) {
      case Error<List<OsceAttempt>>(:final error):
        emit(
          state.copyWith(pagingState: state.pagingState.copyWith(error: error)),
        );
        return;
      case Ok<List<OsceAttempt>>():
    }

    final items = getResult.value;

    emit(
      state.copyWith(
        pagingState: state.pagingState.copyWith(
          isLoading: false,
          pages: [...?state.pagingState.pages, items],
          hasNextPage: !calcIsLastPage(items),
          keys: [...?state.pagingState.keys, newKey],
        ),
      ),
    );
  }

  void _onRefresh(
    OsceAttemptsGetterRefresh event,
    Emitter<OsceAttemptsGetterState> emit,
  ) async {
    final state = this.state;
    final pagingState = state.pagingState;
    if (pagingState.isLoading) {
      event.completer?.completeError(
        Exception(
          "Still loading more content. Please try refreshing again shortly.",
        ),
      );
      return;
    }
    emit(
      state.copyWith(
        pagingState: pagingState.copyWith(
          isLoading: true,
          hasNextPage: false,
          error: null,
        ),
      ),
    );

    final newKey = getNewKey(null);
    final result = await _repo.getAttemptsPage(
      osceId: state.osceId,
      pageSize: _pageSize,
      pageIndex: newKey,
    );
    switch (result) {
      case Error<List<OsceAttempt>>(:final error):
        event.completer?.completeError(error);
        //emit(state.copyWith(pagingState: pagingState.copyWith(error: error)));
        return;
      case Ok<List<OsceAttempt>>():
    }
    final newItems = result.value;

    emit(
      state.copyWith(
        pagingState: pagingState.copyWith(
          isLoading: false,
          hasNextPage: !calcIsLastPage(newItems),
          pages: [newItems],
          keys: [newKey],
        ),
      ),
    );
    event.completer?.complete();
  }
}
