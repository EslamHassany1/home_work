import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/artical_model.dart';

import 'news_tile_widget.dart';

class NewListView extends StatelessWidget {
  final List<ArticalModel> articles;
  @override
  const NewListView({Key? key, required this.articles}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 22.0),
        child: NewsTileWidget(
          articalModel: articles[index],
        ),
      );
    }));
  }
}
