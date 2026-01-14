import 'package:flashcards/domain/models/flashcards/pack/pack.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_pack_getter_state.freezed.dart';

@freezed
sealed class SinglePackGetterState with _$SinglePackGetterState {
  const factory SinglePackGetterState.initial() = SinglePackGetterInitial;

  const factory SinglePackGetterState.loading() = SinglePackGetterLoading;

  const factory SinglePackGetterState.loaded({required Pack pack}) =
      SinglePackGetterLoaded;

  const factory SinglePackGetterState.error({required Exception error}) =
      SinglePackGetterError;
}
