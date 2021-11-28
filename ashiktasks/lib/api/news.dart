import 'dart:convert';

import 'package:ashiktasks/api/article_api.dart';
import 'package:http/http.dart' as http;

class News {
  Future<List<Article>> getNews(String category) async {
    String url = "https://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=e95bd9e7fffe4f2c8b05dc2b5c700ebd";

    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      Map<String, dynamic> _json = json.decode(response.body);
      List<dynamic> body = _json['articles'];
      List<Article> articles = [];
      body.forEach((element) {
        try {
          articles.add(Article.fromJson(element));
        } catch (_) {}
      });
      return articles;
    } else {
      throw Exception("HTTP calling not successfull");
    }
  }
}
