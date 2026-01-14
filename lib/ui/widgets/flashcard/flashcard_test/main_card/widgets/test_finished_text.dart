import 'package:flashcards/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class TestFinishedText extends StatelessWidget {
  const TestFinishedText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppLocalizations.of(context)!.flashcardMainCard_packFinished,
      style: TextStyle(color: Colors.white, fontSize: 18),
    );
  }
}
