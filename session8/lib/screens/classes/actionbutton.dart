<<<<<<< HEAD
import 'package:flutter/material.dart';

Widget CustomActionButton(IconData icon, String label, Color color) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: color.withOpacity(.75),
          shape: BoxShape.circle,
        ),

        child: Icon(icon, color: Colors.white),
      ),
      const SizedBox(height: 4),
      Text(label, style: TextStyle(color: color)),
    ],
  );
}
=======
import 'package:flutter/material.dart';

Widget CustomActionButton(IconData icon, String label, Color color) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: color.withOpacity(.75),
          shape: BoxShape.circle,
        ),

        child: Icon(icon, color: Colors.white),
      ),
      const SizedBox(height: 4),
      Text(label, style: TextStyle(color: color)),
    ],
  );
}
>>>>>>> 156a77c6d3b008c19184eaf5d076ffafc0a9921c
