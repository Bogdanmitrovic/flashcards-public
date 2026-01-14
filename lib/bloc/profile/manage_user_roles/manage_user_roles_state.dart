import 'package:freezed_annotation/freezed_annotation.dart';

part 'manage_user_roles_state.freezed.dart';

@freezed
sealed class ManageUserRolesState with _$ManageUserRolesState {
  const factory ManageUserRolesState.initial() = ManageUserRolesInitial;
  const factory ManageUserRolesState.loading() = ManageUserRolesLoading;
  const factory ManageUserRolesState.success() = ManageUserRolesSuccess;
  const factory ManageUserRolesState.formInvalid({
    required Map<String, String> errors,
  }) = ManageUserRolesFormInvalid;
  const factory ManageUserRolesState.error({required Exception error}) =
      ManageUserRolesError;
}
