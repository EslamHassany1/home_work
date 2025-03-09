import 'package:flutter/material.dart';
import 'package:prolect_test/screens/HomeScreen.dart';

main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen(), debugShowCheckedModeBanner: false);
  }
}
