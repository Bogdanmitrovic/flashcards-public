import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_state.freezed.dart';

@freezed
sealed class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState.initial() = ForgotPasswordInitial;
  const factory ForgotPasswordState.loading() = ForgotPasswordLoading;
  const factory ForgotPasswordState.successful({required String email}) =
      ForgotPasswordSuccessful;
  const factory ForgotPasswordState.error({required Exception error}) =
      ForgotPasswordError;
  const factory ForgotPasswordState.formValid() = ForgotPasswordFormValid;
  const factory ForgotPasswordState.formInvalid({
    required Map<String, String> errors,
  }) = ForgotPasswordFormInvalid;
}
