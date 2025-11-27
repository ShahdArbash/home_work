import 'package:flutter/material.dart';
import 'package:news_app/services/get_news.dart';
import 'package:news_app/widgets/List_News/news_list_view_builder.dart';

class ListNewsOfCategory extends StatelessWidget {
  const ListNewsOfCategory({
    super.key,
    required this.categoryName,
    required this.newsService,
  });
  final String categoryName;
  final NewsService newsService;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(categoryName.toUpperCase())),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: CustomScrollView(
          slivers: [NewsListViewBuilder(categoryName: categoryName)],
        ),
      ),
    );
  }
}
