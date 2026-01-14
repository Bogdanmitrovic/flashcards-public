import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_state.freezed.dart';

@freezed
sealed class ReportState with _$ReportState {
  const factory ReportState.initial() = ReportInitial;
  const factory ReportState.loading() = ReportLoading;
  const factory ReportState.success() = ReportSuccess;
  const factory ReportState.error({required Exception error}) = ReportError;
}
