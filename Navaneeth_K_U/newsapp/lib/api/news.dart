import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:portfolio/models/article_model.dart';

class News {
  String url =
      'https://newsapi.org/v2/everything?domains=wsj.com&apiKey=629b74418a4d40ee9612b193734c0827';
  Future<Article> getNews() async {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      print(response.body);
      return Article.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("API not called succesfully");
    }
  }
}
