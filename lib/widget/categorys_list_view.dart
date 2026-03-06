import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widget/category_card.dart';

class CategorysListView extends StatelessWidget {
  const CategorysListView({super.key});

  final List<CategoryModel> categoris =const
  [
    CategoryModel(imageAssetUrl: 'assets/technology.jpeg', categoryName: 'Technology'),
    CategoryModel(imageAssetUrl: 'assets/business.avif', categoryName: 'Bussiness'),
    CategoryModel(imageAssetUrl: 'assets/general.avif', categoryName: 'General'),
    CategoryModel(imageAssetUrl: 'assets/science.avif', categoryName: 'Science'),
    CategoryModel(imageAssetUrl: 'assets/entertaiment.avif', categoryName: 'Entertaiment'),
    CategoryModel(imageAssetUrl: 'assets/health.avif', categoryName: 'Health'),
    CategoryModel(imageAssetUrl: 'assets/sports.avif', categoryName: 'Sports'),

  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoris.length,
        itemBuilder: (context, index) =>
             CategoryCard(category: categoris[index],),
      ),
    );
  }
}
