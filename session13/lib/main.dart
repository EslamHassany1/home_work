import 'package:flutter/material.dart';
import 'package:fresh_fruits/screens/splach_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocary App',
      theme: ThemeData.light(),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
