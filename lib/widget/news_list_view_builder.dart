import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widget/new_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key});
  
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
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
            child: Center(child: CircularProgressIndicator()),
          )
        :articles.isNotEmpty ? 
          NewsListView(articles: articles)

        : const  SliverFillRemaining(
          hasScrollBody: false,
          child: Center(child: Text('Opps Exit Problem Please Try Later ...',style: TextStyle(
             fontSize: 22,
            color: Colors.red,fontWeight: FontWeight.bold
          ),)))
          
       
         ;
  }
}
