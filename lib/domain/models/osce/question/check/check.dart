import 'package:freezed_annotation/freezed_annotation.dart';

part 'check.freezed.dart';

@freezed
abstract class Check with _$Check {
  const factory Check({
    required String text,
    required bool isTitle,
    required bool isChecked,
    required int index,
    @Default(1) int score,
  }) = _Check;
}
