import 'package:flashcards/ui/theme/theme_extensions.dart';
import 'package:flutter/material.dart';

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    super.key,
    required this.title,
    this.titleStyle,
    required this.icon,
    this.iconColor,
    required this.onPress,
    this.subtitle,
    this.subtitleStyle,
    this.endIcon = true,
    this.textColor,
    this.trailingIcon,
    this.isThreeLine = false,
  });

  final String title;
  final TextStyle? titleStyle;
  final String? subtitle;
  final TextStyle? subtitleStyle;
  final IconData icon;
  final Color? iconColor;
  final VoidCallback? onPress;
  final bool endIcon;
  final Color? textColor;
  final IconData? trailingIcon;
  final bool isThreeLine;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      isThreeLine: isThreeLine,
      contentPadding: EdgeInsets.symmetric(horizontal: 7),
      onTap: onPress,
      leading: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: context.colors.primaryContainer.withValues(alpha: 0.25),
        ),
        child: Icon(icon, color: iconColor ?? context.colors.primary),
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyMedium?.merge(
          titleStyle ?? TextStyle(color: textColor),
        ),
      ),
      subtitle:
          subtitle != null
              ? Text(
                subtitle!,
                style: TextTheme.of(context).bodyMedium?.merge(
                  subtitleStyle ?? TextStyle(color: context.colors.onSurfaceVariant),
                ),
              )
              : null,
      trailing:
          endIcon
              ? Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: context.colors.onSurfaceVariant.withValues(alpha: 0.1),
                ),
                child: Icon(
                  trailingIcon ?? Icons.keyboard_arrow_right,
                  size: 18.0,
                  color: context.colors.onSurfaceVariant,
                ),
              )
              : null,
    );
  }
}
