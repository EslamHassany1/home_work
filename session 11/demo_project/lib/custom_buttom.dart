import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final IconData icon;
  final Color color;

  const CustomButtom({
    super.key,
    required this.title,
    required this.onTap,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 16,
        children: [
          Icon(icon, color: color),
          Text(title, style: TextStyle(color: color, fontSize: 16)),
        ],
      ),
    );
  }
}
