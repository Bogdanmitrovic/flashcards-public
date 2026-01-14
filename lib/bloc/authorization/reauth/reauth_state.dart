import 'package:freezed_annotation/freezed_annotation.dart';

part 'reauth_state.freezed.dart';

@freezed
sealed class ReauthState with _$ReauthState {
  const factory ReauthState.initial() = ReauthInitial;
  const factory ReauthState.loading() = ReauthLoading;
  const factory ReauthState.formInvalid({required Map<String, String> errors}) =
      ReauthFormInvalid;
  const factory ReauthState.success() = ReauthSuccess;
  const factory ReauthState.error({required Exception error}) = ReauthError;
}
