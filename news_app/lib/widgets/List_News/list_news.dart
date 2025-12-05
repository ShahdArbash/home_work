import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';

import 'package:news_app/widgets/List_News/news_item.dart';

class ListNews extends StatelessWidget {
  const ListNews({super.key, required this.news});
  final List<NewsModel> news;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return NewsItem(news: news[index]);
      }, childCount: news.length),
    );
  }
}
