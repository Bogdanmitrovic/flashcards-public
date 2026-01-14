import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_email_state.freezed.dart';

@freezed
sealed class UpdateEmailState with _$UpdateEmailState {
  const factory UpdateEmailState.initial() = UpdateEmailInitial;
  const factory UpdateEmailState.loading() = UpdateEmailLoading;
  const factory UpdateEmailState.refreshing() = UpdateEmailRefreshing;
  const factory UpdateEmailState.sent({required String email}) =
      UpdateEmailSent;
  const factory UpdateEmailState.updateEmailFormInvalid({
    required Map<String, String> errors,
  }) = UpdateEmailFormInvalid;
  const factory UpdateEmailState.success() = UpdateEmailSuccess;
  const factory UpdateEmailState.requiresReauth({required String email}) =
      UpdateEmailRequiresReauth;
  const factory UpdateEmailState.error({required Exception error}) =
      UpdateEmailError;
}
