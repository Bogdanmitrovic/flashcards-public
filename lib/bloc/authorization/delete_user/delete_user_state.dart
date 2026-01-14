import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_user_state.freezed.dart';

@freezed
sealed class DeleteUserState with _$DeleteUserState {
  const factory DeleteUserState.initial() = DeleteUserInitial;
  const factory DeleteUserState.loading() = DeleteUserLoading;
  const factory DeleteUserState.requiredReauth() = DeleteUserRequiresReauth;
  const factory DeleteUserState.successful() = DeleteUserSuccessful;
  const factory DeleteUserState.error({required Exception error}) =
      DeleteUserError;
}
