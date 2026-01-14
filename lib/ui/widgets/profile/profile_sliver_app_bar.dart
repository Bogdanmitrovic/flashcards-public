import 'package:auto_route/auto_route.dart';
import 'package:flashcards/ui/theme/theme_extensions.dart';
import 'package:flutter/material.dart';

class ProfileSliverAppBar extends StatelessWidget {
  final Widget? flexibleSpace;
  final double? expandedHeight;
  final bool pinned;
  final Widget? title;
  final bool floating;
  final List<Widget>? actions;

  const ProfileSliverAppBar({
    super.key,
    this.flexibleSpace,
    this.expandedHeight,
    this.title,
    this.pinned = false,
    this.floating = false,
    this.actions
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      actions: actions,
      backgroundColor: context.colors.primary,
      expandedHeight: expandedHeight,
      pinned: pinned,
      floating: floating,
      flexibleSpace: flexibleSpace,
      title: title,
      leading: IconButton(
        onPressed: () => context.router.pop(),
        icon: Icon(Icons.arrow_back, color: context.colors.onPrimary),
      ),
    );
  }
}
