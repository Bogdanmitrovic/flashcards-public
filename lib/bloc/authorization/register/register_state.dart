import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
sealed class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = RegisterInitial;
  const factory RegisterState.loading() = RegisterLoading;
  const factory RegisterState.registerFormInvalid({
    required Map<String, String> errors,
  }) = RegisterFormInvalid;
  const factory RegisterState.registerFormValid() = RegisterFormValid;
  const factory RegisterState.success({required String displayName}) =
      RegisterSuccess;
  const factory RegisterState.error({required Exception error}) = RegisterError;
}
