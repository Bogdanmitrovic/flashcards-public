import 'package:flashcards/domain/models/flashcards/reports/flashcard_report/flashcard_report.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'fc_reports_getter_state.freezed.dart';

@freezed
abstract class FcReportsGetterState with _$FcReportsGetterState {
  const factory FcReportsGetterState({
    required PagingState<int, FlashcardReport> pagingState,
  }) = _FcReportsGetterState;
}
