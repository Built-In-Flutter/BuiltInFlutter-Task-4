import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news/model/article_model.dart';

class News {
  Future<Article> getNews(String category) async {
    String url =
        'https://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=1e1059dc43da43058e37644ea39ee591';
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return Article.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Api Error");
    }
  }
}
