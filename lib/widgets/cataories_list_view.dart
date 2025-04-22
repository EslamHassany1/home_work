import 'package:flutter/material.dart';

import '../models/category_models.dart';
import 'category_card_widget.dart';

class categoriesListView extends StatelessWidget {
  const categoriesListView({
    super.key,
  });
  final List<CategoryModels> categories = const [
    CategoryModels(text: "Business", imagePath: "assets/entertaiment.avif"),
    CategoryModels(
        text: "Entertainment",
        imagePath: "assets/aaa.jpg",
        coloritem: Colors.black),
    CategoryModels(
        text: "General", imagePath: "assets/News.jpg", coloritem: Colors.red),
    CategoryModels(text: "Health", imagePath: "assets/health.avif"),
    CategoryModels(
      text: "Sports",
      imagePath: "assets/sport.jpg",
      coloritem: Colors.black,
    ),
    CategoryModels(text: "Technology", imagePath: "assets/technology.jpeg"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(item: categories[index]);
          }),
    );
  }
}
