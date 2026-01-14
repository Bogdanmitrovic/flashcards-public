import 'package:flashcards/bloc/authorization/forgot_password/forgot_password_state.dart';
import 'package:flashcards/data/repositories/users/auth_repository.dart';
import 'package:flashcards/utils/firebase_error_mapper.dart';
import 'package:flashcards/utils/form_validations.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  final AuthRepository _authRepository;

  ForgotPasswordCubit({required AuthRepository authRepository})
    : _authRepository = authRepository,
      super(ForgotPasswordInitial());

  Future<void> sendResetEmail(String email) async {
    if (state is! ForgotPasswordFormValid) return;
    emit(ForgotPasswordLoading());
    var result = await _authRepository.sendResetPasswordEmail(email);
    switch (result) {
      case Ok<void>():
        emit(ForgotPasswordSuccessful(email: email));
        break;
      case Error<void>(:final error):
        emit(ForgotPasswordError(error: error));
        break;
    }
  }

  void validateForm(String email) {
    Map<String, String> errors = {};

    putErrorIfExists(errors, "email", validateEmail(email));

    if (errors.isEmpty) {
      emit(ForgotPasswordFormValid());
    } else {
      emit(ForgotPasswordFormInvalid(errors: errors));
    }
  }
}
