
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/views/web_view.dart';
import 'package:news_app/widget/news_title.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        final article = articles[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return WebViewPage(url: article.url);
                },
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: NewsTitle(articleModel: articles[index]),
          ),
        );
      }, childCount: articles.length),
    );
  }
}
