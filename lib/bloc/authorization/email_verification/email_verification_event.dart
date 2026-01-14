import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class EmailVerificationEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class SendEmailVerification extends EmailVerificationEvent {
  final VoidCallback? onSuccess;

  SendEmailVerification({this.onSuccess});

  @override
  List<Object?> get props => [onSuccess];
}

class EnableResendVerification extends EmailVerificationEvent {}

class EmailVerificationReloadUser extends EmailVerificationEvent {}

class EmailVerificationEmailUpdated extends EmailVerificationEvent {
  final String? email;

  EmailVerificationEmailUpdated({this.email});

  @override
  List<Object?> get props => [email];
}

class EmailVerificationErrorFound extends EmailVerificationEvent {
  final Exception error;

  EmailVerificationErrorFound({required this.error});

  @override
  List<Object?> get props => [error];
}
