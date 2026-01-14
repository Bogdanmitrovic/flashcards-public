import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState.initial({Exception? error}) = AuthInitial;

  const factory AuthState.loading({Exception? error}) = AuthLoading;

  const factory AuthState.unauthenticated({
    Exception? error,
    required SignOutReason reason,
  }) = Unauthenticated;

  const factory AuthState.authenticated({
    required User user,
    @Default(false) bool pendingEmailVerification,
    Exception? error,
  }) = Authenticated;

  const factory AuthState.verifyEmailPending({
    required String email,
    String? newEmail,
    @Default(true) bool canResendEmail,
    @Default(false) bool needsReauthentication,
    Exception? error,
  }) = AuthVerifyEmailPending;
}

enum SignOutReason { manual, tokenExpired, emailUpdated, userDeleted }
