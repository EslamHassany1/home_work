import 'package:final_grocery_app/constants/assets.dart';
import 'package:final_grocery_app/styles/app_colors.dart';
import 'package:final_grocery_app/styles/app_text_style.dart';
import 'package:final_grocery_app/views/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingView()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.imagesSplash),
            Text(
              "Fresh Fruits",
              style: AppTextStyles.bold38.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
