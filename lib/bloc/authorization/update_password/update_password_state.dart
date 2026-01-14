import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_password_state.freezed.dart';

@freezed
sealed class UpdatePasswordState with _$UpdatePasswordState {
  const factory UpdatePasswordState.initial() = UpdatePasswordInitial;
  const factory UpdatePasswordState.loading() = UpdatePasswordLoading;
  const factory UpdatePasswordState.formInvalid({
    required Map<String, String> errors,
  }) = UpdatePasswordFormInvalid;
  const factory UpdatePasswordState.requiresReauth() =
      UpdatePasswordRequiresReauth;
  const factory UpdatePasswordState.successful() = UpdatePasswordSuccessful;
  const factory UpdatePasswordState.error({required Exception error}) =
      UpdatePasswordError;
}
