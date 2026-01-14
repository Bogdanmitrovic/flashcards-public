import 'package:flutter/cupertino.dart';

class CardInfoItem {
  final String label;
  final String value;
  final String tooltip;
  final IconData? icon;

  CardInfoItem({
    required this.label,
    required this.value,
    required this.tooltip,
    this.icon,
  });
}
