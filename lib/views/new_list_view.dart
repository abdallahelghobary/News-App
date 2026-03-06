import 'package:flutter/material.dart';
import 'package:news_app/widget/news_title.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
       shrinkWrap: true, // مهم
      physics: const NeverScrollableScrollPhysics(),
      
      itemCount: 10,
    
      itemBuilder: (context, index) {
        return NewsTitle();
      },
    );
  }
}
