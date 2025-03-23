import 'package:flutter/material.dart';

class ButtonModel {
  final String titel;
  final Color btnColor;
  final Color textColor;
  final VoidCallback onTap;

  ButtonModel({
    required this.onTap,
    required this.titel,
    required this.btnColor,
    required this.textColor,
  });
}
