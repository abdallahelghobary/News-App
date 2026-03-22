import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widget/circluarindecator.dart';
import 'package:news_app/widget/error_message.dart';
import 'package:news_app/widget/new_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getTopHeadlines(category: 'general');
  }

  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularIndecator();
        } else if (snapshot.hasError) {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(child: ErrorMassage()),
          );
        } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
          return NewsListView(articles: snapshot.data!);
        } else {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(child: ErrorMassage()),
          );
        }
      },
    );
  }
}
