// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

class Welcome {
    Welcome({
        required this.status,
        required this.totalResults,
        required this.articles,
    });

    final String status;
    final int totalResults;
    final List<Article> articles;

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        status: json["status"],
        totalResults: json["totalResults"],
        articles: List<Article>.from(json["articles"].map((x) => Article.fromJson(x))),
    );
}

class Article {
    Article({
        required this.title,
        required this.description,
        required this.url,
        required this.urlToImage,
    });

    final String title;
    final String description;
    final String url;
    final String urlToImage;

    factory Article.fromJson(Map<String, dynamic> json) => Article(
        title: json["title"],
        description: json["description"] == null ? null : json["description"],
        url: json["url"],
        urlToImage: json["urlToImage"],
    );

  get length => null;
}

class Source {
    Source({
        required this.name,
    });
    final String name;
}
