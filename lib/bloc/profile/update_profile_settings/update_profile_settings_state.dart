import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_profile_settings_state.freezed.dart';

@freezed
sealed class UpdateProfileSettingsState with _$UpdateProfileSettingsState {
  const factory UpdateProfileSettingsState.enabled() =
      UpdateProfileSettingsEnabled;
  const factory UpdateProfileSettingsState.disabled() =
      UpdateProfileSettingsDisabled;
  const factory UpdateProfileSettingsState.loading() =
      UpdateProfileSettingsLoading;
  const factory UpdateProfileSettingsState.successful() =
      UpdateProfileSettingsSuccessful;
  const factory UpdateProfileSettingsState.formInvalid({
    required Map<String, String> errors,
  }) = UpdateProfileSettingsFormInvalid;
  const factory UpdateProfileSettingsState.error({required String message}) =
      UpdateProfileSettingsError;
}
