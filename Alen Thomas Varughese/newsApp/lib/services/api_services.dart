import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:profileapp/model/article_model.dart';
import 'package:http/http.dart';
class ApiService {
  
  final endPointUrl =
      "https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=b3c6e786109944f390984c8943b9f337";

  

  Future<List<Article>> getArticle() async {
    Response res = await get(Uri.parse(endPointUrl));

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);
      List<dynamic> body = json['articles'];

      List<Article> articles = [];
      for (json in body) {
        if (json["source"]["name"] != null &&
            json["title"] != null &&
            json["description"] != null &&
            json["url"] != null &&
            json["urlToImage"] != null) articles.add(Article.fromJson(json));
      }
      return articles;
    } else {
      throw ("Can't get the Articles");
    }
  }
}
