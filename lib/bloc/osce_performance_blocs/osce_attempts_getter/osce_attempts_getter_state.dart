import 'package:flashcards/domain/models/osce/osce_performance/osce_attempt/osce_attempt.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'osce_attempts_getter_state.freezed.dart';

@freezed
abstract class OsceAttemptsGetterState with _$OsceAttemptsGetterState {
  const factory OsceAttemptsGetterState({
    required String osceId,
    required PagingState<int, OsceAttempt> pagingState,
  }) = _OsceAttemptsGetterState;
}
