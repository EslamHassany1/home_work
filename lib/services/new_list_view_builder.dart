import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/artical_model.dart';

import '../widgets/news_tils_list_view.dart';
import 'news_servise.dart';

class newsListViewBuilder extends StatefulWidget {
  const newsListViewBuilder({
    required this.category,
    super.key,
  });
  final String category;
  @override
  State<newsListViewBuilder> createState() => _newsListViewBuilderState();
}

class _newsListViewBuilderState extends State<newsListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsServise(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewListView(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: SizedBox(
                  height: 300, child: Center(child: Text('Try Again'))),
            );
          } else {
            return const SliverToBoxAdapter(
              child: SizedBox(
                  height: 300,
                  child: Center(child: CircularProgressIndicator())),
            );
          }
        });
  }
}
