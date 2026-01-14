import 'package:freezed_annotation/freezed_annotation.dart';

part 'osce_dr_state.freezed.dart';

/// dr => d - delete, r - rename, also it can create osce but I can't bother to rename it :)
@freezed
sealed class OsceDrState with _$OsceDrState {
  const factory OsceDrState.initial() = OsceDrInitial;
  const factory OsceDrState.loading() = OsceDrLoading;
  const factory OsceDrState.success() = OsceDrSuccess;
  const factory OsceDrState.error({required Exception error}) = OsceDrError;
}
