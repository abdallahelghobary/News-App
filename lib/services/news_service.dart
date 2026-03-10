import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticleModel>> getNews() async {
    Response response = await dio.get(
      'https://newsapi.org/v2/everything?apiKey=e3b5a1b209ed481390c4e2c6cb27ac30&language=ar&q=news',
    );
    Map<String, dynamic> jesonData = response.data;
    List<dynamic> articles =
        jesonData['articles']; //as List<Map<String, dynamic>>;

    List<ArticleModel> ariclesList = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
       
        image: article['urlToImage'],
        title: article['title'],
        description: article['description'],
      );

      ariclesList.add(articleModel);
    }

    print(ariclesList);

    return ariclesList;
  }

  void getSportsNews() {}
}
