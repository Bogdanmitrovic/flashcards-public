import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';

part 'custom_app_colors.freezed.dart';

@freezed
abstract class CustomAppColors with _$CustomAppColors {
  const factory CustomAppColors({
    required Color success,
    required Color onSuccess,
    required Color successContainer,
    required Color onSuccessContainer,
    required Color info,
    required Color onInfo,
    required Color infoContainer,
    required Color onInfoContainer,
    required Color warning,
    required Color onWarning,
    required Color warningContainer,
    required Color onWarningContainer,
  }) = _CustomAppColors;
}
