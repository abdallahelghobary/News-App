import 'package:flutter/material.dart';
import 'package:news_app/widget/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});

  final String category;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(category.toUpperCase()) 
      ),
      
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: CustomScrollView(
          slivers: [NewsListViewBuilder(category: category)],
        ),
      ),
    );
  }
}
