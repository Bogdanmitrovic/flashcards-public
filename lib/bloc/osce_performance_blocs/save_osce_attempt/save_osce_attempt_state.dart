import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_osce_attempt_state.freezed.dart';

@freezed
sealed class SaveOsceAttemptState with _$SaveOsceAttemptState {
  const factory SaveOsceAttemptState.initial() = SaveOsceAttemptInitial;
  const factory SaveOsceAttemptState.loading() = SaveOsceAttemptLoading;
  const factory SaveOsceAttemptState.success() = SaveOsceAttemptSuccess;
  const factory SaveOsceAttemptState.error({required Exception error}) =
      SaveOsceAttemptError;
}
