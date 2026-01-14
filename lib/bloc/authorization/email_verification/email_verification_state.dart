import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_verification_state.freezed.dart';

@freezed
sealed class EmailVerificationState with _$EmailVerificationState {
  const factory EmailVerificationState.initial() = EmailVerificationInitial;

  const factory EmailVerificationState.sendingEmail() =
      EmailVerificationsendingEmail;

  const factory EmailVerificationState.loadingUser() =
      EmailVerificationLoadingUser;

  const factory EmailVerificationState.error({required Exception error}) =
      EmailVerificationError;

  const factory EmailVerificationState.sent({
    required String email,
    String? secondEmail,
    @Default(false) bool canResendEmail,
  }) = EmailVerificationSent;
}
