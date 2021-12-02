import 'dart:convert';

import 'package:edwin/model/article_model.dart';
import 'package:http/http.dart' as http;

class News{
  String url="https://newsapi.org/v2/top-headlines?country=in&apiKey=e4d0e42a60ce4041b9815d4e38a75b0f";
  Future<List<Article>> getNews() async {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json['articles'];
      List<Article> articles = [];
      for (var element in body) {
        try {
          articles.add(Article.fromJson(element));
        } catch (_) {}
      }
      return articles;
    } else {
      throw ("Can't get articles");
    }
  }
}