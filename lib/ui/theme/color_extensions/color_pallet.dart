import 'package:flutter/material.dart';
import 'package:flashcards/ui/theme/color_extensions/custom_app_colors.dart';
import 'package:flashcards/ui/theme/color_extensions/theme_color_extension.dart';

final lightCustomColors = ThemeColorExtension(
  CustomAppColors(
    // ✅ SUCCESS
    success: Colors.green.shade700,
    onSuccess: Colors.white,
    successContainer: Colors.green.shade100,
    onSuccessContainer: Colors.green.shade900,

    // ✅ INFO
    info: Colors.blue.shade700,
    onInfo: Colors.white,
    infoContainer: Colors.blue.shade100,
    onInfoContainer: Colors.blue.shade900,

    // ✅ WARNING
    warning: Colors.orange.shade700,
    onWarning: Colors.white,
    warningContainer: Colors.orange.shade100,
    onWarningContainer: Colors.orange.shade900,
  ),
);

final darkCustomColors = ThemeColorExtension(
  CustomAppColors(
    // ✅ SUCCESS
    success: Colors.green.shade300,
    onSuccess: Colors.green.shade900,
    successContainer: Color.alphaBlend(
      Colors.green.shade900.withValues(alpha: 0.5),
      Colors.grey.shade900,
    ),
    onSuccessContainer: Colors.green.shade100,

    // ✅ INFO
    info: Colors.blue.shade300,
    onInfo: Colors.blue.shade900,
    infoContainer: Color.alphaBlend(
      Colors.blue.shade900.withValues(alpha: 0.5),
      Colors.grey.shade900,
    ),
    onInfoContainer: Colors.blue.shade100,

    // ✅ WARNING
    warning: Colors.orange.shade100,
    onWarning: Colors.orange.shade900,
    warningContainer: Color.alphaBlend(
      Colors.orange.shade900.withValues(alpha: 0.3),
      Colors.grey.shade900,
    ),
    onWarningContainer: Colors.orange.shade100,
  ),
);
