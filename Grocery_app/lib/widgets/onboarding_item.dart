import 'package:final_grocery_app/model/onboarding_model.dart';
import 'package:final_grocery_app/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({super.key, required this.item});

  final OnboardingModel item;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(item.image),
          SizedBox(height: 84),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45),
            child: Column(
              children: [
                Text(item.title, style: AppTextStyles.bold24),
                SizedBox(height: 24),

                Text(item.subText ?? "", style: AppTextStyles.bold18),
                SizedBox(height: 10),
                Text(
                  item.description,
                  style: AppTextStyles.regular14,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
