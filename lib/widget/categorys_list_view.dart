
import 'package:flutter/material.dart';
import 'package:news_app/widget/category_card.dart';

class CategorysListView extends StatelessWidget {
  const CategorysListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
       itemCount: 10,
       itemBuilder: (context, index) => const CategoryCard(image: 'assets/business.avif'),
      ),
    );
  }
}