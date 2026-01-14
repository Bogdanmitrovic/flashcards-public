import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_osce_attempt_state.freezed.dart';

@freezed
sealed class DeleteOsceAttemptState with _$DeleteOsceAttemptState {
  const factory DeleteOsceAttemptState.initial() = DeleteOsceAttemptInitial;
  const factory DeleteOsceAttemptState.loading() = DeleteOsceAttemptLoading;
  const factory DeleteOsceAttemptState.success() = DeleteOsceAttemptSuccess;
  const factory DeleteOsceAttemptState.error({required Exception error}) =
      DeleteOsceAttemptError;
}
