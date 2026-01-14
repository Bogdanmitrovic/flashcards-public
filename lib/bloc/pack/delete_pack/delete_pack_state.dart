import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_pack_state.freezed.dart';

@freezed
sealed class DeletePackState with _$DeletePackState {
  const factory DeletePackState.initial() = DeletePackInitial;
  const factory DeletePackState.loading() = DeletePackLoading;
  const factory DeletePackState.successful() = DeletePackSuccessful;
  const factory DeletePackState.error({required Exception error}) =
      DeletePackError;
}
