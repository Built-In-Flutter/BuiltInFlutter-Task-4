import 'dart:convert';

Article articleFromJson(String str) => Article.fromJson(json.decode(str));

class Article {
  Article({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  String status;
  int totalResults;
  List<ArticleElement> articles;

  factory Article.fromJson(Map<String, dynamic> json) => Article(
        status: json["status"],
        totalResults: json["totalResults"],
        articles: List<ArticleElement>.from(
            json["articles"].map((x) => ArticleElement.fromJson(x))),
      );
}

class ArticleElement {
  ArticleElement({
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
  });

  final String title;
  final String description;
  final String url;
  final String urlToImage;

  factory ArticleElement.fromJson(Map<String, dynamic> json) => ArticleElement(
        title: json["title"]!,
        description: json["description"]!,
        url: json["url"]!,
        urlToImage: json["urlToImage"]!,
      );
}

class Source {
  Source({
    required this.name,
  });
  String name;
}
