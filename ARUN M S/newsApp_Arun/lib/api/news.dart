import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newsapp/model/article_model.dart';

class News {
  String url =
      "https://newsapi.org/v2/top-headlines?country=in&apiKey=a2144a65e22f4eeea731bd31bf1eaa0c";
  Future<List<ArticleElement>> getNews() async {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json['articles'];
      List<ArticleElement> articles = [];
      for (var element in body) {
        try {
          articles.add(ArticleElement.fromJson(element));
        } catch (_) {}
      }
      return articles;
    } else {
      throw ("Can't get articles");
    }
  }
}
