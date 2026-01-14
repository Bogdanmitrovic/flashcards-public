import 'package:flashcards/ui/constants/styles.dart';
import 'package:flashcards/ui/widgets/core/card_factory.dart';
import 'package:flutter/material.dart';
import 'package:flashcards/l10n/app_localizations.dart';

class ErrorScreen extends StatelessWidget {
  final String message;
  final String errorMessage;
  final VoidCallback onReload;

  const ErrorScreen({
    super.key,
    required this.errorMessage,
    this.message = "",
    required this.onReload,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: horizontalScreenPadding),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              CardFactory.error(title: Text(errorMessage)),
              Text(message, style: TextStyle(color: Colors.red.shade700)),
            ],
          ),

          Positioned(
            bottom: bottomSpacingOnFloatingButtons,
            left: 0,
            right: 0,
            child: FilledButton(
              onPressed: onReload,
              child: Text(AppLocalizations.of(context)!.basicText_tryAgain),
            ),
          ),
          //Text(errorMessage, style: TextStyle(color: Colors.red.shade700)),
        ],
      ),
    );
  }
}
