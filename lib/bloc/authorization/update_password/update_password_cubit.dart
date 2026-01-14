import 'package:flashcards/bloc/authorization/update_password/update_password_state.dart';
import 'package:flashcards/data/repositories/users/auth_repository.dart';
import 'package:flashcards/utils/firebase_error_mapper.dart';
import 'package:flashcards/utils/form_validations.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpdatePasswordCubit extends Cubit<UpdatePasswordState> {
  final AuthRepository _authRepo;

  UpdatePasswordCubit({required AuthRepository authRepo})
    : _authRepo = authRepo,
      super(UpdatePasswordInitial());

  void updatePassword(String password, String repeatPassword) async {
    emit(UpdatePasswordLoading());

    final errors = _validateForm(password, repeatPassword);
    if (errors.isNotEmpty) {
      emit(UpdatePasswordFormInvalid(errors: errors));
      return;
    }

    var result = await _authRepo.updatePassword(password);
    switch (result) {
      case Ok<void>():
        emit(UpdatePasswordSuccessful());
        break;
      case Error<void>(:final error):
        final requiresReauth = doesErrorRequireReauth(error);
        if (requiresReauth) {
          emit(UpdatePasswordRequiresReauth());
          return;
        } else {
          emit(UpdatePasswordError(error: error));
        }
        break;
    }
  }

  Map<String, String> _validateForm(String password, String repeatPassword) {
    Map<String, String> errors = {};

    putErrorIfExists(errors, 'password', validatePassword(password));
    putErrorIfExists(
      errors,
      'repeat-password',
      validateRepeatPassword(password, repeatPassword),
    );

    return errors;
  }
}
