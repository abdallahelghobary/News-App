import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  void getNews() async {
    Response response = await dio.get(
      'https://newsapi.org/v2/everything?apiKey=e3b5a1b209ed481390c4e2c6cb27ac30&language=ar&q=news',
    );

    Map<String, dynamic> jesonData = response.data;
    List<dynamic> articles =
        jesonData['articles']; //as List<Map<String, dynamic>>;

    for (var article in articles) {
      print(article['author']);
    }
  }

  void getSportsNews() {}
}
