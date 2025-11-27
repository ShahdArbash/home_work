import 'package:news_app/constants/assets.dart';

class CategoryModel {
  String categoryName;
  String imageUrl;

  CategoryModel({required this.categoryName, required this.imageUrl});
}

List<CategoryModel> getCategories() {
  List<CategoryModel> categories = [];

  categories.add(
    CategoryModel(categoryName: "business", imageUrl: Assets.business1),
  );
  categories.add(
    CategoryModel(categoryName: "entertainment", imageUrl: Assets.business2),
  );
  categories.add(
    CategoryModel(categoryName: "health", imageUrl: Assets.business3),
  );
  categories.add(
    CategoryModel(categoryName: "science", imageUrl: Assets.business4),
  );
  categories.add(
    CategoryModel(categoryName: "Science", imageUrl: Assets.business5),
  );
  categories.add(
    CategoryModel(categoryName: "sports", imageUrl: Assets.business1),
  );

  return categories;
}
