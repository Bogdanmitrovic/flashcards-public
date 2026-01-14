import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_profile_state.freezed.dart';

@freezed
sealed class UpdateProfileState with _$UpdateProfileState {
  const factory UpdateProfileState.enabled() = UpdateProfileEnabled;
  const factory UpdateProfileState.disabled() = UpdateProfileDisabled;
  const factory UpdateProfileState.loading() = UpdateProfileLoading;
  const factory UpdateProfileState.successful() = UpdateProfileSuccessful;
  const factory UpdateProfileState.formInvalid({
    required Map<String, String> errors,
  }) = UpdateProfileFormInvalid;
  const factory UpdateProfileState.error({required String message}) =
      UpdateProfileError;
}
