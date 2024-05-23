import 'package:flutter/material.dart';
import '../models/artical_model.dart';
import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.articles});

  final List<ArticalModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 22),
          child: NewsTile(
            articalModel: articles[index],
          ),
        ),
      ),
    );
  }
}
