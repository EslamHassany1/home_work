import 'package:flutter/material.dart';

import '../models/category_models.dart';
import '../screens/category_screen.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.item});
  final CategoryModels item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return CategoryScreen(
              category: item.text,
            );
          }));
        },
        child: Container(
          height: 85,
          width: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(item.imagePath),
              )),
          child: Center(
            child: Text(
              item.text,
              style: TextStyle(
                color: item.coloritem ?? Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
