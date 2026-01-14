import 'package:flutter/material.dart';

class RefreshButton extends StatelessWidget {
  final VoidCallback onRefresh;

  const RefreshButton({super.key, required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onRefresh,
      icon: Icon(Icons.refresh, color: Colors.white, size: 40),
    );
  }
}
