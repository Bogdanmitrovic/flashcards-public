import 'package:flashcards/domain/models/flashcards/pack/pack.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'packs_getter_state.freezed.dart';

@freezed
abstract class PacksGetterState with _$PacksGetterState {
  const factory PacksGetterState({
    required PagingState<int, Pack> pagingState,
    @Default(null) bool? hasCards,
}) = _PacksGetterState;
}
