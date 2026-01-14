import 'package:flashcards/bloc/osce_performance_blocs/save_osce_attempt/save_osce_attempt_state.dart';
import 'package:flashcards/data/repositories/osces/osce_performance_repository.dart';
import 'package:flashcards/domain/models/osce/simple_osce/simple_osce.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SaveOsceAttemptCubit extends Cubit<SaveOsceAttemptState> {
  final OscePerformanceRepository _repo;

  SaveOsceAttemptCubit({required OscePerformanceRepository oscePerformanceRepo})
    : _repo = oscePerformanceRepo,
      super(SaveOsceAttemptInitial());

  void saveAttempt({
    required SimpleOsce simpleOsce,
    required int maxScore,
    required int achievedScore,
  }) async {
    emit(SaveOsceAttemptLoading());

    final reportResult = await _repo.saveOsceAttempt(
      maxScore: maxScore,
      achievedScore: achievedScore,
      simpleOsce: simpleOsce,
    );

    switch (reportResult) {
      case Error<void>(:final error):
        print(error);
        emit(SaveOsceAttemptError(error: error));
      case Ok<void>():
        emit(SaveOsceAttemptSuccess());
    }
  }
}
