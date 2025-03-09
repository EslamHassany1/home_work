import 'package:flutter/material.dart';

class TextClass extends StatelessWidget {
  const TextClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '''Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps.Situated 1,578 meters above sea level, it is one of the larger Alpine lakes. ,''',
      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
    );
  }
}
