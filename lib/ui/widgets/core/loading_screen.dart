import 'package:flutter/material.dart';
import 'package:flashcards/l10n/app_localizations.dart';

class LoadingScreen extends StatelessWidget {
  final String message;

  const LoadingScreen({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            message,
            style: TextTheme.of(context).headlineMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            width: 50,
            height: 50,
            child: CircularProgressIndicator(
              color: Colors.indigo,
              strokeWidth: 5,
            ),
          ),
        ],
      ),
    );
  }
}
