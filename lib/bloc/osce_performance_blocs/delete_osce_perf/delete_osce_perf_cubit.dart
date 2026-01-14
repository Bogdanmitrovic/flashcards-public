import 'package:flashcards/bloc/osce_performance_blocs/delete_osce_perf/delete_osce_perf_state.dart';
import 'package:flashcards/data/repositories/osces/osce_performance_repository.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeleteOscePerfCubit extends Cubit<DeleteOscePerfState> {
  final OscePerformanceRepository _repo;

  DeleteOscePerfCubit({required OscePerformanceRepository perfRepo})
    : _repo = perfRepo,
      super(DeleteOscePerfInitial());

  void deleteEntirePerformance({required String osceId}) async {
    if (state is! DeleteOscePerfInitial) return;

    emit(DeleteOscePerfLoading());

    final result = await _repo.deletePerformanceAndAttempts(osceId);
    switch (result) {
      case Error<void>(:final error):
        emit(DeleteOscePerfError(error: error));
      case Ok<void>():
        emit(DeleteOscePerfSuccess());
    }
  }
}
