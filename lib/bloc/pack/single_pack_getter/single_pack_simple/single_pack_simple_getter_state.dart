import 'package:flashcards/domain/models/flashcards/admin_pack/admin_pack.dart';
import 'package:flashcards/domain/models/flashcards/simple_pack/simple_pack.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_pack_simple_getter_state.freezed.dart';

@freezed
sealed class SinglePackSimpleGetterState with _$SinglePackSimpleGetterState {
  const factory SinglePackSimpleGetterState.initial() =
      SinglePackSimpleGetterInitial;

  const factory SinglePackSimpleGetterState.loading() =
      SinglePackSimpleGetterLoading;

  const factory SinglePackSimpleGetterState.loaded({required SimplePack pack}) =
      SinglePackSimpleGetterLoaded;

  const factory SinglePackSimpleGetterState.error({required Exception error}) =
      SinglePackSimpleGetterError;
}
