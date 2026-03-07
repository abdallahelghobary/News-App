import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widget/category_card.dart';

class CategorysListView extends StatelessWidget {
  const CategorysListView({super.key});

  final List<CategoryModel> categoris =const
  [
    CategoryModel(imageAssetUrl: 'assets/technology.jpg', categoryName: 'Technology'),
    CategoryModel(imageAssetUrl: 'assets/business.jpg', categoryName: 'Bussiness'),
    CategoryModel(imageAssetUrl: 'assets/sports.jpg', categoryName: 'Sports'),
    CategoryModel(imageAssetUrl: 'assets/entertaiment.jpg', categoryName: 'Entertaiment'),
    CategoryModel(imageAssetUrl: 'assets/science.jpg', categoryName: 'Science'),
    CategoryModel(imageAssetUrl: 'assets/health.jpg', categoryName: 'Health'),
   CategoryModel(imageAssetUrl: 'assets/general.jpg', categoryName: 'General'),
   

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
