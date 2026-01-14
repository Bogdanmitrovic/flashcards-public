import 'package:firebase_auth/firebase_auth.dart';
import 'package:flashcards/bloc/authorization/login/login_state.dart';
import 'package:flashcards/data/repositories/users/auth_repository.dart';
import 'package:flashcards/utils/firebase_error_mapper.dart';
import 'package:flashcards/utils/form_validations.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepository _authRepository;

  LoginCubit({required AuthRepository authRepository})
    : _authRepository = authRepository,
      super(LoginInitial());

  Future<void> login(String email, String password) async {
    if (state is! LoginFormValid) {
      return;
    }
    emit(LoginLoading());

    var result = await _authRepository.login(email, password);

    switch (result) {
      case Ok<User>(value: final user):
        emit(LoginSuccess(displayName: user.displayName ?? ""));
        break;
      case Error<User>(:final error):
        emit(LoginError(error: error));
        break;
    }
  }

  void validateForm(String email, String password) {
    Map<String, String> errors = {};

    putErrorIfExists(errors, "email", validateEmail(email));
    putErrorIfExists(errors, "password", validatePassword(password));

    if (errors.isEmpty) {
      emit(LoginFormValid());
    } else {
      emit(LoginFormInvalid(errors: errors));
    }
  }
}
