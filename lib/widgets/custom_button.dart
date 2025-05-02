import 'package:final_grocery_app/model/button_model.dart';
import 'package:final_grocery_app/styles/app_colors.dart';
import 'package:final_grocery_app/styles/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final Color textColor;
  final Color btnColor;
  const CustomBtn({
    super.key,
    required this.onTap,
    required this.title,
    required this.textColor,
    required this.btnColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(
          MediaQuery.of(context).size.width * 0.85,
          MediaQuery.of(context).size.height * 0.08,
        ),
        side:
            btnColor == AppColors.primaryColor
                ? BorderSide(width: 0)
                : BorderSide(width: 2),
        backgroundColor: btnColor,
      ),

      onPressed: onTap,
      child: Text(
        title,
        style: AppTextStyles.bold16.copyWith(color: textColor),
      ),
    );
  }
}

class CreateBtn extends StatelessWidget {
  final ButtonModel btnModel;

  const CreateBtn({super.key, required this.btnModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: btnModel.onTap,
          child: Container(
            width: 318,
            height: 60,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 318,
                    height: 60,
                    decoration: ShapeDecoration(
                      color: btnModel.btnColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 72,
                  top: 18,
                  child: Text(
                    btnModel.titel,
                    textAlign: TextAlign.center,
                    style: AppTextStyles.bold16.copyWith(
                      color: btnModel.textColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
