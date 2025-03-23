import 'package:final_grocery_app/styles/app_colors.dart';
import 'package:final_grocery_app/styles/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  const CustomBtn({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(318, 60),

        backgroundColor: AppColors.primaryColor,
      ),

      onPressed: onTap,
      child: Text(title, style: AppTextStyles.bold16),
    );
  }
}
