import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widget/news_title.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key});
  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel> articles = [];

  @override
  void initState() {
    getGeneralNews();

    super.initState();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsService(Dio()).getNews();

    setState(() 
    {
         
    }
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length, (
        context,
        index,
      ) {
        return Padding(
          padding: EdgeInsets.only(top: 20),
          child: NewsTitle(articleModel: articles[index]),
        );
      }),
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
