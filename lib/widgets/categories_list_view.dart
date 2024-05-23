import 'package:flutter/material.dart';
import '../models/category_model.dart';
import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(
      categoryName: 'Technology',
      imageAsset: 'assets/technology.jpeg',
    ),
    CategoryModel(
      categoryName: 'Business',
      imageAsset: 'assets/business.png',
    ),
    CategoryModel(
      categoryName: 'entertainment',
      imageAsset: 'assets/entertaiment.png',
    ),
    CategoryModel(
      categoryName: 'Health',
      imageAsset: 'assets/health.png',
    ),
    CategoryModel(
      categoryName: 'Science',
      imageAsset: 'assets/science.png',
    ),
    CategoryModel(
      categoryName: 'Sports',
      imageAsset: 'assets/sports.png',
    ),
    CategoryModel(
      categoryName: 'General',
      imageAsset: 'assets/general.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
