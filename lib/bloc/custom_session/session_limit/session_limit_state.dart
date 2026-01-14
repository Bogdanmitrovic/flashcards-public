import 'package:flashcards/domain/enums/pack_selected_filter.dart';
import 'package:flashcards/domain/models/flashcards/tag/tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_limit_state.freezed.dart';

enum SessionLimitStatus { initial, formInvalid, loading, success, error }

extension SessionLimitStatusX on SessionLimitStatus {
  bool get isInitial => this == SessionLimitStatus.initial;
  bool get isLoading => this == SessionLimitStatus.loading;
  bool get isFormInvalid => this == SessionLimitStatus.formInvalid;
  bool get isSuccess => this == SessionLimitStatus.success;
  bool get isError => this == SessionLimitStatus.error;
}

@freezed
sealed class SessionLimitState with _$SessionLimitState {
  const factory SessionLimitState.initial() = SessionLimitInitial;
  const factory SessionLimitState.loaded({
    @Default(SessionLimitStatus.initial) SessionLimitStatus status,
    required bool isEstimatePrecise,
    required int flashcardsCount,
    required List<String> selectedPacks,
    required PackSelectedFilter selectedFilter,
    required List<Tag> selectedTags,
    @Default({}) Map<String, String> formErrors,
    Exception? error,
  }) = SessionLimitLoaded;
}
