import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/services/get_news.dart';
import 'package:news_app/widgets/Category/category_item.dart';

class ListCategory extends StatelessWidget {
  ListCategory({super.key});
  List<CategoryModel> categories = getCategories();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return CategoryItem(category: categories[index]);
        },
      ),
    );
  }
}
