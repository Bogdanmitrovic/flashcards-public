import 'package:flashcards/bloc/osce_performance_blocs/osce_perf_getter/osce_perf_getter_event.dart';
import 'package:flashcards/bloc/osce_performance_blocs/osce_perf_getter/osce_perf_getter_state.dart';
import 'package:flashcards/bloc/utils/utils.dart';
import 'package:flashcards/data/repositories/osces/osce_performance_repository.dart';
import 'package:flashcards/domain/models/osce/osce_performance/osce_performance.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flashcards/utils/util_functions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class OscePerfGetterBloc
    extends Bloc<OscePerfGetterEvent, OscePerfGetterState> {
  final OscePerformanceRepository _repo;
  final _pageSize = 20;

  OscePerfGetterBloc({required OscePerformanceRepository perfRepo})
    : _repo = perfRepo,
      super(OscePerfGetterState(pagingState: PagingState(hasNextPage: false))) {
    on<OscePerfGetterRefresh>(_onRefresh);
    on<OscePerfGetterFetched>(_onFetched);
    on<OscePerfGetterIncreaseCount>(_onIncreaseCount);
    on<OscePerfGetterDeleted>(_onDeleted);
  }

  void fetchNextPage() => add(OscePerfGetterFetched());

  void _onDeleted(
    OscePerfGetterDeleted event,
    Emitter<OscePerfGetterState> emit,
  ) {
    final state = this.state;
    if (state.pagingState.isLoading) return;

    final pages = state.pagingState.pages;
    var newPages = pages;
    if (pages != null) {
      newPages = removeElementFromPage(
        pages,
        (element) => element.simpleOsce.id == event.osceId,
      );
    }

    emit(
      state.copyWith(pagingState: state.pagingState.copyWith(pages: newPages)),
    );
  }

  void _onIncreaseCount(
    OscePerfGetterIncreaseCount event,
    Emitter<OscePerfGetterState> emit,
  ) {
    final state = this.state;
    if (state.pagingState.isLoading) return;

    final pages = state.pagingState.pages;
    var newPages = pages;
    if (pages != null) {
      newPages = updateElementInPage(
        pages,
        (element) => element.simpleOsce.id == event.osceId,
        (element) => element.copyWith(attemptsCount: element.attemptsCount - 1),
      );
    }

    emit(
      state.copyWith(pagingState: state.pagingState.copyWith(pages: newPages)),
    );
  }

  void _onFetched(
    OscePerfGetterFetched event,
    Emitter<OscePerfGetterState> emit,
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

    final getResult = await _repo.getPerformancePage(
      pageIndex: newKey,
      pageSize: _pageSize,
    );
    switch (getResult) {
      case Error<List<OscePerformance>>(:final error):
        emit(
          state.copyWith(pagingState: state.pagingState.copyWith(error: error)),
        );
        return;
      case Ok<List<OscePerformance>>():
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
    OscePerfGetterRefresh event,
    Emitter<OscePerfGetterState> emit,
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
    final result = await _repo.getPerformancePage(
      pageSize: _pageSize,
      pageIndex: newKey,
    );
    switch (result) {
      case Error<List<OscePerformance>>(:final error):
        event.completer?.completeError(error);
        //emit(state.copyWith(pagingState: pagingState.copyWith(error: error)));
        return;
      case Ok<List<OscePerformance>>():
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
