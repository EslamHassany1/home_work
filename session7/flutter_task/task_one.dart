import 'package:flutter/material.dart';
import 'package:test_project/home_work/custom_widgets/container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 50),
          child: Card(
            color: Color(0xFFbbdefa),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustContanier("A", Color(0xffee534f)),
                    CustContanier("B", Color(0xFFffa827)),
                    CustContanier("C", Color(0xFFfdd734)),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.only(bottom: 10),
                  color: Color(0xFFc5cae8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Fancy Section", style: TextStyle(fontSize: 20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustContanier("1", Color(0xFF7f57bf)),
                          CustContanier("2", Color(0xFFaa47bd)),
                          CustContanier("3", Color(0xFF9675ce)),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustContanier("4", Color(0xFFb968c7)),
                          CustContanier("5", Color(0xFFb39ddb)),
                          CustContanier("6", Color(0xFFcf93d9)),
                        ],
                      ),
                    ],
                  ),
                ),
                Text(
                  "Info Cards",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFF4758bf),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InfoCards("23", "Active", Colors.orangeAccent),
                    InfoCards("15", "Panding", Colors.greenAccent),
                    InfoCards("7", "Completed", Colors.lightGreen),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
