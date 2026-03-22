class ArticleModel {
  final String? image;
  final String title;
  final String? description;
  final String url;
  // final Sourse sourse;

  ArticleModel({
    //  required this.sourse,
    required this.image,
    required this.title,
    required this.description, 
    required this.url,
  });

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      image: json['urlToImage'],
      title: json['title'],
      description: json['description'],
      url: json['url']
    );
  }
}

//* If I Want Trigger Sourse <= Transfer L of maps To L of Object
class Sourse {
  final String id;

  final String name;

  Sourse({required this.id, required this.name});
}
