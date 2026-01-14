import 'package:flashcards/bloc/custom_session/pack_filter/pack_filter_event.dart';
import 'package:flashcards/bloc/custom_session/pack_filter/pack_filter_state.dart';
import 'package:flashcards/data/repositories/flashcards/fcp_repository.dart';
import 'package:flashcards/domain/models/flashcards/flashcard_filter_counts/pack_filter_counts.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PackFilterBloc extends Bloc<PackFilterEvent, PackFilterState> {
  final FcpRepository _fcpRepo;

  PackFilterBloc({required FcpRepository fcpRepo})
    : _fcpRepo = fcpRepo,
      super(PackFilterInitial()) {
    on<PackFilterCountsFetched>(_onFetched);
    on<PackFilterSelected>(_onSelected);
  }

  void _onFetched(
    PackFilterCountsFetched event,
    Emitter<PackFilterState> emit,
  ) async {
    if (state is PackFilterLoading) return;
    emit(PackFilterLoading());

    final result = await _fcpRepo.getFilterCounts(
      event.packIds,
      event.allCount,
    );
    switch (result) {
      case Error<PackFilterCounts>(:final error):
        emit(PackFilterError(error: error));
        return;
      case Ok<PackFilterCounts>():
    }

    emit(PackFilterLoaded(packFilterCounts: result.value));
  }

  void _onSelected(PackFilterSelected event, Emitter<PackFilterState> emit) {
    final state = this.state;
    if (state is! PackFilterLoaded) return;

    emit(state.copyWith(selectedFilter: event.filter));
  }
}
