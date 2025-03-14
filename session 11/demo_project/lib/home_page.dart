import 'package:demo_project/custom_continer.dart';
import 'package:demo_project/custom_row.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 1;
  int colorIndex = 0;
  int sizeIndex = 0;
  double fontsize = 20;

  final List<List<Color>> gradientColor = [
    [Colors.blue, Colors.white],
    [Colors.purple, Colors.white],
    [Colors.red, Colors.white],
    [Colors.orange, Colors.white],
  ];

  List<double> sized = [20, 25, 40, 30, 35];

  void changeColor() {
    setState(() {
      if (colorIndex == 3) {
        colorIndex = 0;
      } else {
        colorIndex++;
      }
    });
  }

  void changeTextSize() {
    setState(() {
      if (sizeIndex == 4) {
        sizeIndex = 0;
      } else {
        sizeIndex++;
      }
      // fontsize = sized[sizeIndex];
    });
  }

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color primaryColor = gradientColor[colorIndex][0];
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "InterActive App",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradientColor[colorIndex],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),

        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomContiner(
                    color: primaryColor,
                    counter: counter,
                    fontsize: sized[sizeIndex],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Counter value",
                    style: TextStyle(fontSize: 15, color: primaryColor),
                  ),
                  Text(
                    "$counter",
                    style: TextStyle(
                      fontSize: 48,
                      color: primaryColor,
                      fontWeight: FontWeight.w900,
                    ),
                  ),

                  RowWidget(
                    color: primaryColor,
                    changeColor: changeColor,
                    changeTextSize: changeTextSize,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: incrementCounter,
        label: const Text("increment", style: TextStyle(color: Colors.white)),
        icon: Icon(Icons.add, color: Colors.white),
        backgroundColor: primaryColor,
      ),
    );
  }
}
