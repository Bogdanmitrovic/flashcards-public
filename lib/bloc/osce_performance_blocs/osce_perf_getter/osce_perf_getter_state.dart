import 'package:flashcards/domain/models/osce/osce_performance/osce_performance.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'osce_perf_getter_state.freezed.dart';

@freezed
abstract class OscePerfGetterState with _$OscePerfGetterState {
  const factory OscePerfGetterState({
    required PagingState<int, OscePerformance> pagingState,
  }) = _OscePerfGetterState;
}
