import 'package:flashcards/bloc/custom_session/session_limit/session_limit_state.dart';
import 'package:flashcards/data/repositories/flashcards/custom_session_repository.dart';
import 'package:flashcards/domain/enums/pack_selected_filter.dart';
import 'package:flashcards/domain/models/flashcards/tag/tag.dart';
import 'package:flashcards/utils/form_validations.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SessionLimitCubit extends Cubit<SessionLimitState> {
  final CustomSessionRepository _customSessionRepo;

  SessionLimitCubit({required CustomSessionRepository customSessionRepo})
    : _customSessionRepo = customSessionRepo,
      super(SessionLimitInitial());

  void loadData({
    required bool areAllTagsSelected,
    required int packFilterCount,
    required List<Tag> selectedTags,
    required List<String> selectedPackNames,
    required PackSelectedFilter filter,
  }) {
    emit(
      SessionLimitLoaded(
        flashcardsCount: packFilterCount,
        isEstimatePrecise: areAllTagsSelected,
        selectedTags: selectedTags,
        selectedPacks: selectedPackNames,
        selectedFilter: filter,
      ),
    );
  }

  void submitCustomSession({
    required String flashcardsCount,
    required int packFilterCount,
    required PackSelectedFilter filter,
    required List<String> selectedTags,
    required List<String> packIds,
  }) async {
    final state = this.state;
    if (state is! SessionLimitLoaded) return;

    final errors = _validateInput(flashcardsCount, packFilterCount);
    if (errors.isNotEmpty) {
      emit(
        state.copyWith(
          status: SessionLimitStatus.formInvalid,
          formErrors: errors,
        ),
      );
      return;
    }

    emit(state.copyWith(status: SessionLimitStatus.loading));
    final result = await _customSessionRepo.createCustomSession(
      sessionSize: int.parse(flashcardsCount),
      filter: filter,
      tags: selectedTags,
      packIds: packIds,
    );
    switch (result) {
      case Error<void>(:final error):
        emit(state.copyWith(status: SessionLimitStatus.error, error: error));
        return;
      case Ok<void>():
    }

    emit(state.copyWith(status: SessionLimitStatus.success));
  }

  Map<String, String> _validateInput(
    String flashcardsCount,
    int packFilterCount,
  ) {
    final Map<String, String> errors = {};

    putErrorIfExists(
      errors,
      'flashcardsCount',
      validateClampedNumber(flashcardsCount, 1, packFilterCount, 1000),
    );

    return errors;
  }
}
