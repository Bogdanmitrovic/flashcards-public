import 'package:flashcards/domain/models/flashcards/admin_pack/admin_pack.dart';
import 'package:flashcards/domain/models/flashcards/simple_pack/simple_pack.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_pack_state.freezed.dart';

@freezed
sealed class CreatePackState with _$CreatePackState {
  const factory CreatePackState.initial() = CreatePackInitial;
  const factory CreatePackState.loading() = CreatePackLoading;
  const factory CreatePackState.successful({required SimplePack pack}) =
      CreatePackSuccessful;
  const factory CreatePackState.formInvalid({
    required Map<String, String> errors,
  }) = CreatePackFormInvalid;
  const factory CreatePackState.error({required Exception error}) =
      CreatePackError;
}
