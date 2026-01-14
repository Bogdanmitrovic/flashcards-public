import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_osce_perf_state.freezed.dart';

@freezed
sealed class DeleteOscePerfState with _$DeleteOscePerfState {
  const factory DeleteOscePerfState.initial() = DeleteOscePerfInitial;
  const factory DeleteOscePerfState.loading() = DeleteOscePerfLoading;
  const factory DeleteOscePerfState.success() = DeleteOscePerfSuccess;
  const factory DeleteOscePerfState.error({required Exception error}) =
      DeleteOscePerfError;
}
