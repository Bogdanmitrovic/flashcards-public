import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> setAppOrientation(BuildContext context) async {
  final mediaQuery = MediaQuery.of(context);
  final shortestSide = mediaQuery.size.shortestSide;

  final isTablet = shortestSide >= 600; // prag za tablet

  if (isTablet) {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  } else {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }
}
