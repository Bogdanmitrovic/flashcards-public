import 'package:flashcards/ui/theme/theme_extensions.dart';
import 'package:flutter/material.dart';

class MainCardContainer extends StatelessWidget {
  final Widget child;

  const MainCardContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: 200),
            child: Container(
              decoration: BoxDecoration(
                color: context.colors.primaryContainer,
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.all(40),
                    child: child,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
