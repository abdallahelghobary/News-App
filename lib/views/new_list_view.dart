import 'package:flutter/material.dart';
import 'package:news_app/widget/news_title.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 10,
       (context, index) 
      {
        return Padding(
          padding: EdgeInsets.only(top: 20),
          child: const NewsTitle());
      },
      ),
    );

    //ListView.builder(
    //     physics :BouncingScrollPhysics(),
    //    shrinkWrap: true,
    //   itemCount: 10,
    //   itemBuilder: (context, index) {
    //     return NewsTitle();
    //   },
    // );
  }
}
