import 'package:flashcards/bloc/osce_performance_blocs/delete_osce_attempt/delete_osce_attempt_state.dart';
import 'package:flashcards/data/repositories/osces/osce_performance_repository.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeleteOsceAttemptCubit extends Cubit<DeleteOsceAttemptState> {
  final OscePerformanceRepository _repo;

  DeleteOsceAttemptCubit({required OscePerformanceRepository perfRepo})
    : _repo = perfRepo,
      super(DeleteOsceAttemptInitial());

  void deleteAttempt({
    required String osceId,
    required String attemptId,
  }) async {
    if (state is! DeleteOsceAttemptInitial) return;

    emit(DeleteOsceAttemptLoading());

    final result = await _repo.deleteAttempt(
      osceId: osceId,
      attemptId: attemptId,
    );
    switch (result) {
      case Error<void>(:final error):
        emit(DeleteOsceAttemptError(error: error));
      case Ok<void>():
        emit(DeleteOsceAttemptSuccess());
    }
  }
}
