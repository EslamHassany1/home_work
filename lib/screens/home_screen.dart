import 'package:flutter/material.dart';
import '../services/new_list_view_builder.dart';
import '../widgets/cataories_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'News',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: 'Cloud',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color.fromARGB(255, 219, 200, 52),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: categoriesListView(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 32,
                ),
              ),
              newsListViewBuilder(
                category: "world",
              ),
            ],
          ),
        ));
  }
}
