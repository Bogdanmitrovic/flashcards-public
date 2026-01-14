import 'package:flashcards/domain/models/flashcards/admin_pack/admin_pack.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rename_pack_state.freezed.dart';

@freezed
sealed class RenamePackState with _$RenamePackState {
  const factory RenamePackState.initial() = RenamePackInitial;
  const factory RenamePackState.loading() = RenamePackLoading;
  const factory RenamePackState.success({required String newName}) =
      RenamePackSuccess;
  const factory RenamePackState.formInvalid({
    required Map<String, String> errors,
  }) = RenamePackFormInvalid;
  const factory RenamePackState.error({required Exception error}) =
      RenamePackError;
}
