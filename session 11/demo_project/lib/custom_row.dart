import 'package:demo_project/custom_buttom.dart';
import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  final Color color;
  final void Function() changeColor;
  final void Function() changeTextSize;
  const RowWidget({
    super.key,
    required this.color,
    required this.changeColor,
    required this.changeTextSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomButtom(
          color: color,
          title: "Change color",
          onTap: changeColor,
          icon: Icons.palette,
        ),
        CustomButtom(
          color: color,
          title: "Change Size",
          onTap: changeTextSize,
          icon: Icons.text_fields,
        ),
      ],
    );
  }
}
