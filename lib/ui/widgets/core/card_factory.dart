import 'package:flashcards/ui/theme/theme_extensions.dart';
import 'package:flutter/material.dart';

enum CardType { info, warning, error, success }

class CardFactory extends StatefulWidget {
  final CardType type;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;

  //final Widget? leading;
  // final Color darkColor;
  // final Color lightColor;
  final bool closable;
  final bool isThreeLine;
  final bool isBigTitle;

  const CardFactory._({
    super.key,
    required this.type,
    // required this.darkColor,
    // required this.lightColor,
    //this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    this.closable = false,
    this.isThreeLine = false,
    this.isBigTitle = true,
  });

  factory CardFactory.info({
    Widget? title,
    Widget? subtitle,
    Widget? trailing,
    bool closable = false,
    bool isThreeLine = false,
    bool isBigTitle = true,
  }) {
    return CardFactory._(
      // leading: Icon(Icons.info, color: Colors.blue.shade600),
      // darkColor: Colors.blue.shade600,
      // lightColor: Colors.blue.shade100,
      type: CardType.info,
      title: title,
      subtitle: subtitle,
      closable: closable,
      trailing: trailing,
      isThreeLine: isThreeLine,
      isBigTitle: isBigTitle,
    );
  }

  factory CardFactory.warning({
    Widget? title,
    Widget? subtitle,
    Widget? trailing,
    bool closable = false,
    bool isThreeLine = false,
    bool isBigTitle = true,
  }) {
    return CardFactory._(
      // leading: Icon(Icons.warning, color: Colors.orange.shade600),
      // darkColor: Colors.orange.shade600,
      // lightColor: Colors.orange.shade100,
      type: CardType.warning,
      title: title,
      subtitle: subtitle,
      closable: closable,
      trailing: trailing,
      isThreeLine: isThreeLine,
      isBigTitle: isBigTitle,
    );
  }

  factory CardFactory.error({
    Widget? title,
    Widget? subtitle,
    Widget? trailing,
    bool closable = false,
    bool isThreeLine = false,
    bool isBigTitle = true,
  }) {
    return CardFactory._(
      // leading: Icon(Icons.error, color: Colors.red.shade600),
      // darkColor: Colors.red.shade600,
      // lightColor: Colors.red.shade100,
      type: CardType.error,
      title: title,
      subtitle: subtitle,
      closable: closable,
      trailing: trailing,
      isThreeLine: isThreeLine,
      isBigTitle: isBigTitle,
    );
  }

  factory CardFactory.success({
    Widget? title,
    Widget? subtitle,
    Widget? trailing,
    bool closable = false,
    bool isThreeLine = false,
    bool isBigTitle = true,
  }) {
    return CardFactory._(
      // leading: Icon(Icons.check_circle, color: Colors.greenAccent.shade700),
      // darkColor: Colors.greenAccent.shade700,
      // lightColor: Colors.greenAccent.shade100,
      type: CardType.success,
      title: title,
      subtitle: subtitle,
      closable: closable,
      trailing: trailing,
      isThreeLine: isThreeLine,
      isBigTitle: isBigTitle,
    );
  }

  @override
  State<CardFactory> createState() => _CardFactoryState();
}

class _CardFactoryState extends State<CardFactory> {
  bool _closed = false;

  @override
  Widget build(BuildContext context) {
    late final Color surface;
    late final Color onSurface;
    late final IconData icon;

    switch (widget.type) {
      case CardType.info:
        surface = context.customColors.infoContainer;
        onSurface = context.customColors.info;
        icon = Icons.info;
        break;
      case CardType.warning:
        surface = context.customColors.warningContainer;
        onSurface = context.customColors.warning;
        icon = Icons.warning;
        break;
      case CardType.error:
        surface = context.colors.errorContainer.withValues(alpha: 0.6);
        onSurface = context.colors.error;
        icon = Icons.error;
        break;
      case CardType.success:
        surface = context.customColors.successContainer;
        onSurface = context.customColors.success;
        icon = Icons.check_circle;
        break;
    }

    return _closed
        ? SizedBox.shrink()
        : ListTile(
            isThreeLine: widget.isThreeLine,
            tileColor: surface,
            shape: RoundedRectangleBorder(side: BorderSide(color: onSurface)),
            title: widget.title,
            titleTextStyle: widget.isBigTitle
                ? TextTheme.of(context).bodyLarge?.merge(
                    TextStyle(color: onSurface, fontWeight: FontWeight.bold),
                  )
                : TextTheme.of(
                    context,
                  ).bodyMedium?.merge(TextStyle(color: onSurface)),
            subtitle: widget.subtitle,
            subtitleTextStyle: TextTheme.of(
              context,
            ).bodyMedium?.merge(TextStyle(color: onSurface)),
            leading: Icon(icon, color: onSurface),
            trailing:
                widget.trailing ??
                (widget.closable
                    ? IconButton(
                        onPressed: () => setState(() => _closed = true),
                        icon: Icon(Icons.close, color: onSurface),
                      )
                    : null),
          );
  }
}
