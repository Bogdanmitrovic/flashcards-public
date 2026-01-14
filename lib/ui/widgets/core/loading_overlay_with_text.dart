import 'package:flashcards/ui/constants/styles.dart';
import 'package:flutter/material.dart';

class LoadingOverlayWithText extends StatelessWidget {
  final String textString;

  const LoadingOverlayWithText({super.key, this.textString = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: horizontalScreenPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 12,
        children: [
          CircularProgressIndicator(color: Colors.indigo[50]),
          Text(
            textString,
            style: TextTheme.of(
              context,
            ).headlineSmall?.merge(TextStyle(color: Colors.indigo[50])),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
