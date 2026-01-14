import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flashcards/bloc/authorization/email_verification/email_verification_event.dart';
import 'package:flashcards/bloc/authorization/email_verification/email_verification_state.dart';
import 'package:flashcards/data/repositories/users/auth_repository.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailVerificationBloc
    extends Bloc<EmailVerificationEvent, EmailVerificationState> {
  final AuthRepository _authRepository;
  Timer? _verificationLinkResendTimer;
  Timer? _verificationListenerTimer;

  EmailVerificationBloc({required AuthRepository authRepository})
    : _authRepository = authRepository,
      super(EmailVerificationInitial()) {
    on<SendEmailVerification>(_onSendEmailVerification);
    on<EnableResendVerification>(_onEnableResendVerification);
    on<EmailVerificationReloadUser>(_onEmailVerificationReloadUser);
    on<EmailVerificationEmailUpdated>(_onEmailVerificationEmailUpdated);
  }

  void _onSendEmailVerification(
    SendEmailVerification event,
    Emitter<EmailVerificationState> emit,
  ) async {
    emit(EmailVerificationsendingEmail());

    var result = await _authRepository.sendEmailVerification();

    switch (result) {
      case Ok<User>(value: final user):
        emit(EmailVerificationSent(email: user.email!));
        _startVerificationLinkResendTimer();
        _startVerificationListenerTimer();
        event.onSuccess?.call();
        break;
      case Error<User>(:final error):
        emit(EmailVerificationError(error: error));
    }
  }

  void _onEmailVerificationReloadUser(
    EmailVerificationReloadUser event,
    Emitter<EmailVerificationState> emit,
  ) async {
    var prevState = state;
    emit(EmailVerificationLoadingUser());

    var result = await _authRepository.reloadUser();

    switch (result) {
      case Ok<User>(value: final user):
        switch (prevState) {
          case EmailVerificationSent():
            emit(prevState);
            break;
          default:
            emit(EmailVerificationSent(email: user.email!));
            _startVerificationLinkResendTimer();
            break;
        }
        break;
      case Error<User>(error: var error):
        emit(EmailVerificationError(error: error));
        break;
    }
  }

  void _onEnableResendVerification(
    EnableResendVerification event,
    Emitter<EmailVerificationState> emit,
  ) {
    switch (state) {
      case EmailVerificationSent():
        emit((state as EmailVerificationSent).copyWith(canResendEmail: true));
        break;
      default:
        break;
    }
  }

  void _onEmailVerificationEmailUpdated(
    EmailVerificationEmailUpdated event,
    Emitter<EmailVerificationState> emit,
  ) {
    switch (state) {
      case EmailVerificationSent():
        emit(
          (state as EmailVerificationSent).copyWith(secondEmail: event.email),
        );
      default:
    }
  }

  void _startVerificationLinkResendTimer() {
    _verificationLinkResendTimer?.cancel();
    _verificationLinkResendTimer = Timer(const Duration(seconds: 30), () {
      add(EnableResendVerification());
    });
  }

  void _startVerificationListenerTimer() {
    print("[TIMER] timer started");
    _verificationListenerTimer?.cancel();

    _verificationListenerTimer = Timer.periodic(const Duration(seconds: 30), (
      timer,
    ) async {
      print("[TIMER] timer is ticking...");
      final result = await _authRepository.reloadUser();
      switch (result) {
        case Ok<User>(:final value):
          break;
        case Error<User>(:final error):
          break;
      }
    });
  }

  void _cancelTimers() {
    print("[TIMER] timers canceling...");
    _verificationLinkResendTimer?.cancel();
    _verificationListenerTimer?.cancel();
  }

  @override
  Future<void> close() {
    _cancelTimers();
    return super.close();
  }
}
