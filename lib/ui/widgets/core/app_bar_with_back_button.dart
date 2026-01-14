import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AppBarWithBackButton extends StatelessWidget
    implements PreferredSizeWidget {
  final Widget? title;

  const AppBarWithBackButton({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        onPressed: () => context.router.pop(),
        icon: Icon(Icons.arrow_back),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
