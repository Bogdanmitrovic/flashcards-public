import 'package:flashcards/ui/theme/color_extensions/custom_app_colors.dart';
import 'package:flutter/material.dart';

class ThemeColorExtension extends ThemeExtension<ThemeColorExtension> {
  final CustomAppColors colors;

  const ThemeColorExtension(this.colors);

  @override
  ThemeColorExtension copyWith({CustomAppColors? colors}) {
    return ThemeColorExtension(colors ?? this.colors);
  }

  @override
  ThemeColorExtension lerp(
    ThemeExtension<ThemeColorExtension>? other,
    double t,
  ) {
    if (other is! ThemeColorExtension) return this;
    return ThemeColorExtension(
      CustomAppColors(
        success: Color.lerp(colors.success, other.colors.success, t)!,
        onSuccess: Color.lerp(colors.onSuccess, other.colors.onSuccess, t)!,
        successContainer: Color.lerp(
          colors.successContainer,
          other.colors.successContainer,
          t,
        )!,
        onSuccessContainer: Color.lerp(
          colors.onSuccessContainer,
          other.colors.onSuccessContainer,
          t,
        )!,
        info: Color.lerp(colors.info, other.colors.info, t)!,
        onInfo: Color.lerp(colors.onInfo, other.colors.onInfo, t)!,
        infoContainer: Color.lerp(
          colors.infoContainer,
          other.colors.infoContainer,
          t,
        )!,
        onInfoContainer: Color.lerp(
          colors.onInfoContainer,
          other.colors.onInfoContainer,
          t,
        )!,
        warning: Color.lerp(colors.warning, other.colors.warning, t)!,
        onWarning: Color.lerp(colors.onWarning, other.colors.onWarning, t)!,
        warningContainer: Color.lerp(
          colors.warningContainer,
          other.colors.warningContainer,
          t,
        )!,
        onWarningContainer: Color.lerp(
          colors.onWarningContainer,
          other.colors.onWarningContainer,
          t,
        )!,
      ),
    );
  }
}
