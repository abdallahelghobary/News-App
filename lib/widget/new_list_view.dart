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

  bool isLoading = true;

  @override
  void initState() {
    getGeneralNews();
    super.initState();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsService(Dio()).getNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverFillRemaining(
          hasScrollBody: false,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 22),
                  child: NewsTitle(articleModel: articles[index]),
                );
              },
              childCount: articles.length,
            ),
          );
  }
}
