// To parse this JSON data, do
//
//     final article = articleFromJson(jsonString);

import 'dart:convert';
import 'package:newsapp/screens/config/var.dart';

Article articleFromJson(String str) => Article.fromJson(json.decode(str));

String articleToJson(Article data) => json.encode(data.toJson());

class Article {
  Article({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  final String status;
  final int totalResults;
  final List<ArticleElement> articles;

  factory Article.fromJson(Map<String, dynamic> json) => Article(
    status: json["status"],
    totalResults: json["totalResults"],
    articles: List<ArticleElement>.from(
        json["articles"].map((x) => ArticleElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "totalResults": totalResults,
    "articles": List<dynamic>.from(articles.map((x) => x.toJson())),
  };
}

class ArticleElement {
  ArticleElement({
// required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

// final Source source;
  final String? author;
  final String title;
  final String description;
  final String url;
  final String? urlToImage;
  final DateTime publishedAt;
  final String? content;

  factory ArticleElement.fromJson(Map<String, dynamic> json) => ArticleElement(
// source: Source.fromJson(json["source"]),
    author: json["author"] ?? "AuthorName",
    title: json["title"],
    description: json["description"] ?? "Description",
    url: json["url"],
    urlToImage: json["urlToImage"] ?? placeHolderImage,
    publishedAt: DateTime.parse(json["publishedAt"]),
    content: json["content"] ?? "Content",
  );

  Map<String, dynamic> toJson() => {
// "source": source.toJson(),
    "author": (author == null) ? null : author,
    "title": title,
    "description": description,
    "url": url,
    "urlToImage": urlToImage,
    "publishedAt": publishedAt.toIso8601String(),
    "content": (content == null) ? null : content,
  };
}
