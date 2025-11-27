import 'package:flutter/material.dart';
import 'package:news_app/services/get_news.dart';
import 'package:news_app/widgets/Category/list_view_categorys.dart';
import 'package:news_app/widgets/List_News/news_list_view_builder.dart';
import 'package:news_app/widgets/title_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: titleWidget()),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: ListCategory()),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            NewsListViewBuilder(categoryName: 'general'),
          ],
        ),
      ),
    );
  }
}


/*  bab17fc23bc44eefac4eb02353da9f23  */