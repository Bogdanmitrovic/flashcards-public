import 'package:flashcards/bloc/osces/admin_osce_getter/admin_osce_getter_event.dart';
import 'package:flashcards/bloc/osces/admin_osce_getter/admin_osce_getter_state.dart';
import 'package:flashcards/bloc/utils/utils.dart';
import 'package:flashcards/data/repositories/osces/osce_repository.dart';
import 'package:flashcards/data/repositories/utils/user_claims.dart';
import 'package:flashcards/domain/models/osce/simple_osce/simple_osce.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class AdminOsceGetterBloc
    extends Bloc<AdminOsceGetterEvent, AdminOsceGetterState> {
  final OsceRepository _osceRepo;
  final int _pageSize = 15;
  bool _isFirstLoad = true;

  AdminOsceGetterBloc({required OsceRepository osceRepo})
    : _osceRepo = osceRepo,
      super(
        AdminOsceGetterState(pagingState: PagingState(hasNextPage: false)),
      ) {
    on<AdminOsceGetterCacheRead>(_onCacheRead);
    on<AdminOsceGetterPageFetched>(
      _onPageFetched,
      transformer: throttleDroppable(throttleDuration),
    );
    on<AdminOsceGetterRefresh>(_onRefresh);
  }

  void fetchNextPage() {
    if (_isFirstLoad) {
      add(AdminOsceGetterCacheRead());
      _isFirstLoad = false;
    } else {
      add(AdminOsceGetterPageFetched());
    }
  }

  void _onRefresh(
    AdminOsceGetterRefresh event,
    Emitter<AdminOsceGetterState> emit,
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

  void _onCacheRead(
    AdminOsceGetterCacheRead event,
    Emitter<AdminOsceGetterState> emit,
  ) {
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
    AdminOsceGetterPageFetched event,
    Emitter<AdminOsceGetterState> emit,
  ) async {
    final pagingState = state.pagingState;
    if (pagingState.isLoading) return;

    emit(
      state.copyWith(
        pagingState: pagingState.copyWith(isLoading: true, error: null),
      ),
    );

    // if (state.hasOsce == null) {
    //   final claims = await UserClaims.current();
    //   emit(state.copyWith(hasOsce: claims.hasOsce));
    // }

    final newKey = getNewKey(pagingState.keys);
    final result = await _osceRepo.getOscePage(
      pageSize: _pageSize,
      pageIndex: newKey,
    );
    switch (result) {
      case Error<List<SimpleOsce>>(:final error):
        emit((state.copyWith(pagingState: pagingState.copyWith(error: error))));
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
