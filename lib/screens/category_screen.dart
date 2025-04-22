import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/services/new_list_view_builder.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          newsListViewBuilder(
            category: category,
          ),
        ],
      ),
    );
  }
}
