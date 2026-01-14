import 'package:flashcards/bloc/profile/manage_user_roles/manage_user_roles_state.dart';
import 'package:flashcards/data/repositories/users/user_roles_repository.dart';
import 'package:flashcards/utils/form_validations.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ManageUserRolesCubit extends Cubit<ManageUserRolesState> {
  final UserRolesRepository _userRolesRepo;

  ManageUserRolesCubit({required UserRolesRepository userRolesRepo})
    : _userRolesRepo = userRolesRepo,
      super(ManageUserRolesInitial());

  void setAdminRole(String email) async {
    final errors = _validateForm(email);
    if (errors.isNotEmpty) {
      emit(ManageUserRolesFormInvalid(errors: errors));
      return;
    }

    emit(ManageUserRolesLoading());

    final setResult = await _userRolesRepo.setAdminRole(email);
    switch (setResult) {
      case Error<void>(:final error):
        emit(ManageUserRolesError(error: error));
        return;
      case Ok<void>():
    }

    emit(ManageUserRolesSuccess());
  }

  Map<String, String> _validateForm(String email) {
    final Map<String, String> errors = {};

    putErrorIfExists(errors, 'email', validateEmail(email));
    return errors;
  }
}
