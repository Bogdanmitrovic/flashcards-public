import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
sealed class LoginState with _$LoginState {
  const factory LoginState.initial() = LoginInitial;
  const factory LoginState.loading() = LoginLoading;
  const factory LoginState.loginFormInvalid({
    required Map<String, String> errors,
  }) = LoginFormInvalid;
  const factory LoginState.loginFormValid() = LoginFormValid;
  const factory LoginState.success({required String displayName}) =
      LoginSuccess;
  const factory LoginState.error({required Exception error}) = LoginError;
}
