import 'package:flashcards/domain/models/flashcards/reports/user_report/user_report.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'user_reports_getter_state.freezed.dart';

@freezed
abstract class UserReportsGetterState with _$UserReportsGetterState {
  const factory UserReportsGetterState({
    required String flashcardId,
    required PagingState<int, UserReport> pagingState,
  }) = _UserReportsGetterState;
}
