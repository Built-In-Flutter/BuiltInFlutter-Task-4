// To parse this JSON data, do
//
//     final article = articleFromJson(jsonString);

import 'dart:convert';

Article articleFromJson(String str) => Article.fromJson(json.decode(str));

String articleToJson(Article data) => json.encode(data.toJson());

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
        articles: List<ArticleElement>.from(json["articles"].map((x) => ArticleElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "totalResults": totalResults,
        "articles": List<dynamic>.from(articles.map((x) => x.toJson())),
    };
}

class ArticleElement {
    ArticleElement({
      required   this.author,
      required   this.title,
      required   this.description,
      required   this.url,
      required   this.urlToImage,
      required   this.publishedAt,
      required   this.content,
    });

    String author;
    String title;
    String description;
    String url;
    String urlToImage;
    DateTime publishedAt;
    String content;

    factory ArticleElement.fromJson(Map<String, dynamic> json) => ArticleElement(
        author: json["author"] == null ? "Author" : json["author"],
        title: json["title"],
        description: json["description"],
        url: json["url"],
        urlToImage: json["urlToImage"],
        publishedAt: DateTime.parse(json["publishedAt"]),
        content: json["content"],
    );

    Map<String, dynamic> toJson() => {
        "author": author == null ? null : author,
        "title": title,
        "description": description,
        "url": url,
        "urlToImage": urlToImage,
        "publishedAt": publishedAt.toIso8601String(),
        "content": content,
    };
}


