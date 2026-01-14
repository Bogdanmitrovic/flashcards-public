import 'package:flashcards/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class RevealButton extends StatelessWidget {
  final bool enabled;
  final VoidCallback onShowAnswer;

  const RevealButton({
    super.key,
    required this.enabled,
    required this.onShowAnswer,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 50,
            child: FilledButton(
              onPressed: enabled ? onShowAnswer : null,
              child: Text(
                AppLocalizations.of(context)!.flashcardMainButton_reveal,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
