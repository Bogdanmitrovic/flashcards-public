import 'package:firebase_auth/firebase_auth.dart';
import 'package:flashcards/bloc/authorization/register/register_state.dart';
import 'package:flashcards/data/repositories/users/auth_repository.dart';
import 'package:flashcards/domain/models/profile/profile.dart';
import 'package:flashcards/utils/firebase_error_mapper.dart';
import 'package:flashcards/utils/form_validations.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final AuthRepository _authRepository;

  RegisterCubit({required AuthRepository authRepository})
    : _authRepository = authRepository,
      super(RegisterInitial());

  Future<void> register(String email, String password, Profile profile) async {
    if (state is! RegisterFormValid) {
      print(
        "[ERROR] Register state is not RegisterFormValid. Can't call register endpoint",
      );
      return;
    }
    emit(RegisterLoading());

    final result = await _authRepository.register(email, password, profile);

    switch (result) {
      case Ok<String>(:final value):
        emit(RegisterSuccess(displayName: value));
        break;
      case Error<String>(:final error):
        emit(RegisterError(error: error));
        break;
    }
  }

  void validateForm(
    String email,
    String password,
    String repeatPassword,
    Profile profile,
  ) {
    Map<String, String> errors = {};

    putErrorIfExists(errors, "email", validateEmail(email));
    putErrorIfExists(errors, "password", validatePassword(password));
    putErrorIfExists(errors, "name", validateName(profile.name));
    putErrorIfExists(errors, "surname", validateSurname(profile.surname));
    putErrorIfExists(
      errors,
      "phoneNumber",
      validatePhoneNumber(profile.phoneNumber),
    );
    putErrorIfExists(
      errors,
      "repeatPassword",
      validateRepeatPassword(password, repeatPassword),
    );

    if (errors.isEmpty) {
      emit(RegisterFormValid());
    } else {
      emit(RegisterFormInvalid(errors: errors));
    }
  }
}
