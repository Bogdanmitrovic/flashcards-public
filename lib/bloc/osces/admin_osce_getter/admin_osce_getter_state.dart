import 'package:flashcards/domain/models/osce/simple_osce/simple_osce.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'admin_osce_getter_state.freezed.dart';

@freezed
abstract class AdminOsceGetterState with _$AdminOsceGetterState {
  const factory AdminOsceGetterState({
    required PagingState<int, SimpleOsce> pagingState,
    // @Default(null) bool? hasOsce,
  }) = _AdminOsceGetterState;
}
