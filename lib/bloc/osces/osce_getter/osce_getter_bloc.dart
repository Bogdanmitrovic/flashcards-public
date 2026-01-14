import 'package:flashcards/bloc/osces/osce_getter/osce_getter_event.dart';
import 'package:flashcards/bloc/osces/osce_getter/osce_getter_state.dart';
import 'package:flashcards/bloc/utils/utils.dart';
import 'package:flashcards/data/repositories/osces/osce_repository.dart';
import 'package:flashcards/data/repositories/utils/user_claims.dart';
import 'package:flashcards/domain/models/osce/simple_osce/simple_osce.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class OsceGetterBloc extends Bloc<OsceGetterEvent, OsceGetterState> {
  final OsceRepository _osceRepo;
  final int _pageSize = 10;
  bool _isFirstLoad = true;

  OsceGetterBloc({required OsceRepository osceRepo})
    : _osceRepo = osceRepo,
      super(OsceGetterState(pagingState: PagingState(hasNextPage: false))) {
    on<OsceGetterCacheRead>(_onCacheRead);
    on<OsceGetterPageFetched>(
      _onPageFetched,
      transformer: throttleDroppable(throttleDuration),
    );
    on<OsceGetterRefresh>(_onRefresh);
    // on<OsceGetterClaimsFetched>(_onClaimsFetched);
  }

  void fetchNextPage() {
    if (_isFirstLoad) {
      add(OsceGetterCacheRead());
      _isFirstLoad = false;
    } else {
      add(OsceGetterPageFetched());
    }
  }

  // void _onClaimsFetched(
  //   OsceGetterClaimsFetched event,
  //   Emitter<OsceGetterState> emit,
  // ) async {
  //   final claims = await UserClaims.current();
  //   emit(state.copyWith(hasOsce: claims.hasOsce));
  // }

  void _onRefresh(
    OsceGetterRefresh event,
    Emitter<OsceGetterState> emit,
  ) async {
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
    final result = await _osceRepo.refreshOsceAndFetchFirstPage(
      pageSize: _pageSize,
      firstPageIndex: newKey,
    );
    switch (result) {
      case Error<List<SimpleOsce>>(:final error):
        event.completer?.completeError(error);
        emit(state.copyWith(pagingState: pagingState.copyWith(error: error)));
        return;
      case Ok<List<SimpleOsce>>():
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

  void _onCacheRead(OsceGetterCacheRead event, Emitter<OsceGetterState> emit) {
    final pagingState = state.pagingState;
    if (pagingState.isLoading) return;
    emit(
      state.copyWith(
        pagingState: pagingState.copyWith(isLoading: true, error: null),
      ),
    );

    List<List<SimpleOsce>>? pages;
    List<int>? keys;
    List<SimpleOsce>? newItems;
    while (true) {
      final newKey = getNewKey(keys);
      newItems = _osceRepo.getOscePageFromCache(newKey);
      if (newItems == null) break;

      pages = [...?pages, newItems];
      keys = [...?keys, newKey];
    }

    emit(
      state.copyWith(
        pagingState: pagingState.copyWith(
          hasNextPage: true,
          keys: keys,
          pages: pages,
          isLoading: false,
          error: null,
        ),
      ),
    );
  }

  void _onPageFetched(
    OsceGetterPageFetched event,
    Emitter<OsceGetterState> emit,
  ) async {
    final pagingState = state.pagingState;
    if (pagingState.isLoading) return;

    emit(
      state.copyWith(
        pagingState: pagingState.copyWith(isLoading: true, error: null),
      ),
    );

    if (state.hasOsce == null) {
      final claims = await UserClaims.current();
      emit(state.copyWith(hasOsce: claims.hasOsce));
    }

    final newKey = getNewKey(pagingState.keys);
    final result = await _osceRepo.getOscePage(
      pageSize: _pageSize,
      pageIndex: newKey,
    );
    switch (result) {
      case Error<List<SimpleOsce>>(:final error):
        emit(state.copyWith(pagingState: pagingState.copyWith(error: error)));
        return;
      case Ok<List<SimpleOsce>>():
    }

    emit(
      state.copyWith(
        pagingState: pagingState.copyWith(
          pages: [...?pagingState.pages, result.value],
          keys: [...?pagingState.keys, newKey],
          isLoading: false,
          hasNextPage: !calcIsLastPage(result.value),
        ),
      ),
    );
  }
}
