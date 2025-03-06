import 'package:flutter/material.dart';

class CustContanier extends StatelessWidget {
  final String text;
  final Color colors;
  const CustContanier(this.text, this.colors, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 35,
      color: colors,
      child: Center(
        child: Text(text, style: TextStyle(fontSize: 24, color: Colors.white)),
      ),
    );
  }
}

class InfoCards extends StatelessWidget {
  final String text;
  final String subtext;
  final Color color;

  const InfoCards(this.text, this.subtext, this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      width: 75,
      height: 75,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              color: color,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(subtext, style: TextStyle(color: color, fontSize: 12)),
        ],
      ),
    );
  }
}
