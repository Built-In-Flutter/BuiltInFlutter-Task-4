import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app/models/article_model.dart';

class News {
  String url =
      "https://newsapi.org/v2/top-headlines?country=in&apiKey=ff45fbf1c8ce46588d4d22592b696782";
  Future<List<Article>> getNews() async {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json['articles'];
      List<Article> articles = [];
      body.forEach((element) {
        try {
          articles.add(Article.fromJson(element));
        } catch (_) {}
      });
      return articles;
    } else {
      throw ("Can't get the Articles");
    }
  }
}
