import 'package:flashcards/bloc/pack/pack_searcher/pack_searcher_event.dart';
import 'package:flashcards/bloc/pack/pack_searcher/pack_searcher_state.dart';
import 'package:flashcards/bloc/utils/utils.dart';
import 'package:flashcards/data/repositories/algolia_search/packs_searcher_repository.dart';
import 'package:flashcards/data/repositories/utils/user_claims.dart';
import 'package:flashcards/domain/models/algolia/algolia_pack/algolia_pack.dart';
import 'package:flashcards/domain/models/algolia/pack_search_result/search_result_with_tags.dart';
import 'package:flashcards/domain/models/flashcards/tag/tag.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flashcards/utils/util_functions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class PackSearcherBloc extends Bloc<PackSearcherEvent, PackSearcherState> {
  final PacksSearcherRepository _packSearcherRepo;

  PackSearcherBloc({required PacksSearcherRepository packSearcherRepo})
    : _packSearcherRepo = packSearcherRepo,
      super(PackSearcherState(pagingState: PagingState(hasNextPage: false))) {
    on<PackSearcherRequestSent>(
      _onRequestSent,
      transformer: debounce(debounceDuration),
    );
    on<PackSearcherNextPageRequested>(
      _onNextPageRequested,
      transformer: throttleDroppable(throttleDuration),
    );
    on<PackSearcherTagToggled>(_onTagToggled);
    on<PackSearcherPackAddedToState>(_onAdded);
    on<PackSearcherPackUpdatedInState>(_onUpdate);
    on<PackSearcherPackRemovedFromState>(_onRemove);
    // on<PackSearcherClaimsFetched>(_onClaimsFetched);
  }

  // void _onClaimsFetched(PackSearcherClaimsFetched event, Emitter<PackSearcherState> emit) async {
  //   final claims = await UserClaims.current();
  //   emit(state.copyWith(hasCards: claims.hasCards));
  // }

  void _onRemove(
    PackSearcherPackRemovedFromState event,
    Emitter<PackSearcherState> emit,
  ) {
    final pagingState = state.pagingState;
    if (state.status.isFetching || pagingState.isLoading) return;

    final pages = pagingState.pages;
    if (pages == null) return;

    final newPages = removeElementFromPage(
      pages,
      (element) => element.objectID == event.packId,
    );

    emit(state.copyWith(pagingState: pagingState.copyWith(pages: newPages)));
  }

  void _onUpdate(
    PackSearcherPackUpdatedInState event,
    Emitter<PackSearcherState> emit,
  ) {
    final pagingState = state.pagingState;
    if (state.status.isFetching || pagingState.isLoading) return;

    final pages = pagingState.pages;
    if (pages == null) return;

    final newPages = updateElementInPage(
      pages,
      (element) => element.objectID == event.packId,
      event.copyWith,
    );

    emit(state.copyWith(pagingState: pagingState.copyWith(pages: newPages)));
  }

  void _onAdded(
    PackSearcherPackAddedToState event,
    Emitter<PackSearcherState> emit,
  ) {
    final pagingState = state.pagingState;
    if (state.status.isFetching || pagingState.isLoading) return;

    final pages = pagingState.pages;
    late final List<List<AlgoliaPack>> newPages;
    int? newKey;
    if (pages == null) {
      newKey = getNewKey(null, startFrom: 0);
      newPages = [
        [event.pack],
      ];
    } else {
      newPages = insertElementIntoPage(pagingState.pages!, event.pack, (0, 0));
    }

    emit(
      state.copyWith(
        pagingState: pagingState.copyWith(
          pages: newPages,
          keys: newKey != null ? [newKey] : pagingState.keys,
        ),
      ),
    );
  }

  void fetchNextPage() => add(PackSearcherNextPageRequested());

  void _onNextPageRequested(
    PackSearcherNextPageRequested event,
    Emitter<PackSearcherState> emit,
  ) async {
    final pagingState = state.pagingState;
    if (pagingState.isLoading || state.status.isFetching) return;

    if (state.hasCards == null) {
      final claims = await UserClaims.current();
      emit(state.copyWith(hasCards: claims.hasCards));
    }

    emit(
      state.copyWith(
        status: PackSearcherStatus.fetching,
        pagingState: pagingState.copyWith(isLoading: true, error: null),
      ),
    );

    final newKey = getNewKey(pagingState.keys, startFrom: 0);

    //print("Fetching next page for key: $newKey");
    var result = await _packSearcherRepo.searchPacks(
      page: newKey,
      query: state.lastQuerySent,
      tags: state.selectedTagsList,
    );
    switch (result) {
      case Error<SearchResultWithTags<AlgoliaPack>>(:final error):
        emit(
          state.copyWith(
            pagingState: pagingState.copyWith(error: error, isLoading: false),
          ),
        );
        return;
      case Ok<SearchResultWithTags<AlgoliaPack>>():
    }
    final page = result.value;

    //print("${page.pageKey} ${page.nextPageKey} ${page.isLastPage}");
    emit(
      state.copyWith(
        status: PackSearcherStatus.initial,
        hitsCount: page.hitCount,
        tagCounts: result.value.tagCounts,
        pagingState: updatePagingState(
          oldState: state.pagingState,
          newItems: page.hits,
          pageKey: page.pageKey,
          isLastPage: page.isLastPage,
        ),
      ),
    );

    // emit(
    //   state.copyWith(
    //     tagCounts: result.value.tagCounts,
    //     pagingState: pagingState.copyWith(
    //       pages: [...?pagingState.pages, newItems],
    //       keys: [...?pagingState.keys, newKey],
    //       hasNextPage: !isLastPage,
    //       isLoading: false,
    //     ),
    //   ),
    // );
  }

  void _onRequestSent(
    PackSearcherRequestSent event,
    Emitter<PackSearcherState> emit,
  ) async {
    if (!state.status.isInitial) return;

    await _sendSearchRequestAndEmit(event.query, emit);
  }

  void _onTagToggled(
    PackSearcherTagToggled event,
    Emitter<PackSearcherState> emit,
  ) async {
    if (!state.status.isInitial) return;

    final isSelected = _isSelected(event.tag);
    final newMap = Map.of(state.selectedTags);
    if (isSelected) {
      newMap.remove(event.tag);
    } else {
      newMap[event.tag] = !isSelected;
    }

    emit(state.copyWith(selectedTags: newMap));

    await _sendSearchRequestAndEmit(state.lastQuerySent, emit);
  }

  /// I use this method because onTagToggled and onRequestSent need to send
  /// search request. The only difference is that onRequestSent uses debounce and
  /// that is why I can't call that event handler inside another event handler
  /// because it will debounce the request
  Future<void> _sendSearchRequestAndEmit(
    String query,
    Emitter<PackSearcherState> emit,
  ) async {
    if (state.hasCards == null) {
      final claims = await UserClaims.current();
      emit(state.copyWith(hasCards: claims.hasCards));
    }

    final newKey = getNewKey(null, startFrom: 0);
    //print("Send new search query for key: $newKey");
    final result = await _packSearcherRepo.searchPacks(
      query: query,
      tags: state.selectedTagsList,
      page: newKey,
    );
    switch (result) {
      case Error<SearchResultWithTags<AlgoliaPack>>(:final error):
        emit(state.copyWith(status: PackSearcherStatus.error, error: error));
        return;
      case Ok<SearchResultWithTags<AlgoliaPack>>():
    }
    //final newItems = result.value.packs;
    final page = result.value;
    emit(
      state.copyWith(
        status: PackSearcherStatus.initial,
        hitsCount: page.hitCount,
        lastQuerySent: query,
        tagCounts: result.value.tagCounts,
        pagingState: updatePagingState(
          oldState: state.pagingState,
          newItems: page.hits,
          pageKey: page.pageKey,
          isLastPage: page.isLastPage,
        ),
      ),
    );
    // emit(
    //   state.copyWith(
    //     status: PackSearcherStatus.initial,
    //     pagingState: PagingState(
    //       hasNextPage: !calcIsLastPage(newItems),
    //       isLoading: false,
    //       pages: [newItems],
    //       keys: [newKey],
    //     ),
    //     tagCounts: result.value.tagCounts,
    //     lastQuerySent: query,
    //   ),
    // );
  }

  PagingState<int, T> updatePagingState<T>({
    required PagingState<int, T> oldState,
    required List<T> newItems,
    required int pageKey,
    required bool isLastPage,
  }) {
    final newPages = pageKey == 0 ? [newItems] : [...?oldState.pages, newItems];
    final newKeys = pageKey == 0 ? [pageKey] : [...?oldState.keys, pageKey];

    return oldState.copyWith(
      pages: newPages,
      keys: newKeys,
      hasNextPage: !isLastPage,
      isLoading: false,
      error: null,
    );
  }

  bool _isSelected(Tag tag) => state.selectedTags[tag] == true;
}
