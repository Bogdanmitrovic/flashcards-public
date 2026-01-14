import 'package:freezed_annotation/freezed_annotation.dart';

part 'resolve_report_state.freezed.dart';

@freezed
sealed class ResolveReportState with _$ResolveReportState {
  const factory ResolveReportState.initial() = ResolveReportInitial;

  const factory ResolveReportState.loading() = ResolveReportLoading;

  const factory ResolveReportState.error({required Exception error}) =
      ResolveReportError;

  const factory ResolveReportState.success() = ResolveReportSuccess;
}
