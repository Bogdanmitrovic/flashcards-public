import 'package:flashcards/ui/theme/color_extensions/custom_app_colors.dart';
import 'package:flashcards/ui/theme/color_extensions/theme_color_extension.dart';
import 'package:flutter/material.dart';

extension ThemeX on BuildContext {
  ThemeData get theme => Theme.of(this);
  ColorScheme get colors => theme.colorScheme;
  TextTheme get text => theme.textTheme;
  CustomAppColors get customColors => theme.extension<ThemeColorExtension>()!.colors;
}
