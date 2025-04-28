import 'package:flutter/material.dart';

class NoTask extends StatelessWidget {
  const NoTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle_outline),
            SizedBox(height: 10),
            Text("No Tasks yet"),
            SizedBox(height: 10),

            Text("add task to get Start"),
          ],
        ),
      ),
    );
  }
}
