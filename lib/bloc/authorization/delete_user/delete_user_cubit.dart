import 'package:flashcards/bloc/authorization/auth/auth_state.dart';
import 'package:flashcards/bloc/authorization/delete_user/delete_user_state.dart';
import 'package:flashcards/data/repositories/users/profile_repository.dart';
import 'package:flashcards/utils/firebase_error_mapper.dart';
import 'package:flashcards/utils/result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeleteUserCubit extends Cubit<DeleteUserState> {
  final ProfileRepository _profileRepo;
  final void Function(SignOutReason reason) _setSignOutReason;
  final void Function() _resetSignOutReason;

  DeleteUserCubit({
    required ProfileRepository profileRepo,
    required Function(SignOutReason reason) setSignOutReason,
    required Function() resetSignOutReason,
  }) : _profileRepo = profileRepo,
       _resetSignOutReason = resetSignOutReason,
       _setSignOutReason = setSignOutReason,
       super(DeleteUserInitial());

  Future<void> deleteUser(String password) async {
    emit(DeleteUserLoading());

    _setSignOutReason(SignOutReason.userDeleted);
    var result = await _profileRepo.deleteUserAndUserData(password);

    switch (result) {
      case Ok<void>():
        emit(DeleteUserSuccessful());
        return;
      case Error<void>():
    }

    final error = result.error;
    _resetSignOutReason();
    final requiresReauth = doesErrorRequireReauth(error);
    if (requiresReauth) {
      emit(DeleteUserRequiresReauth());
    } else {
      emit(DeleteUserError(error: error));
    }
  }
}
