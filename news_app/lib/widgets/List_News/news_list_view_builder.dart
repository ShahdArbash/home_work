import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/get_news.dart';
import 'package:news_app/widgets/List_News/list_news.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.categoryName});
  final String categoryName;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var futur;
  @override
  void initState() {
    super.initState();
    futur = NewsService(categoryName: widget.categoryName).getNews();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsModel>>(
      future: futur,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: Center(child: Text('Error: ${snapshot.error}')),
          );
        } else if (snapshot.hasData) {
          return ListNews(news: snapshot.data!);
        } else {
          return SliverToBoxAdapter(
            child: Center(child: Text('No data available')),
          );
        }
      },
    );
  }
}
