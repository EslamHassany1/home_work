import 'package:final_grocery_app/styles/app_text_style.dart';
import 'package:final_grocery_app/views/onboarding_view.dart';
import 'package:final_grocery_app/views/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const GroceryApp());
}

class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const OnboardingView(),
      theme: ThemeData(fontFamily: AppTextStyles.poppinsFamily),
    );
  }
}
