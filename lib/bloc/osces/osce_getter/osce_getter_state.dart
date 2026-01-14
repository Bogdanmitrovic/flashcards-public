import 'package:flashcards/domain/models/osce/simple_osce/simple_osce.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'osce_getter_state.freezed.dart';

@freezed
abstract class OsceGetterState with _$OsceGetterState {
  const factory OsceGetterState({
    required PagingState<int, SimpleOsce> pagingState,
    @Default(null) bool? hasOsce,
  }) = _OsceGetterState;
}
