import 'package:flutter/material.dart';

class IndicatorItem extends StatelessWidget {
  final int currentIndex;
  final int itemCount;

  const IndicatorItem({
    super.key,
    required this.currentIndex,
    required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          width: 20.0,
          height: 8.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:
                currentIndex == index
                    ? Colors.green
                    : const Color.fromARGB(255, 199, 187, 187),
          ),
        );
      }),
    );
  }
}
