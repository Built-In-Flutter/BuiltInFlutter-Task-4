import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:newsapp/models/articlemodel.dart';

class News {
  Future<Article> getNews(String category) async {
    String url =
        'https://newsapi.org/v2/everything?q=apple&from=2021-11-25&to=2021-11-25&sortBy=popularity&apiKey=edf8fe32c6f04e88b1a36c8f353f8828';
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return Article.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Api not called successfully");
    }
  }}