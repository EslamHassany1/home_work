import 'package:flutter/material.dart';

class CustomContiner extends StatelessWidget {
  final Color color;
  final int counter;
  final double fontsize;
  const CustomContiner({
    super.key,
    required this.color,
    required this.counter,
    required this.fontsize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 130,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          counter % 2 == 0 ? 'Even: $counter' : 'Odd: $counter',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: fontsize,
          ),
        ),
      ),
    );
  }
}
