import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newzera/model/article_model.dart';

class News {
  String url =
      "https://newsapi.org/v2/top-headlines?country=in&apiKey=ec5d8feba97048dda8411c6ac78aead2";
  Future<Article> getNews() async {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      // print(response.body);
      return Article.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("API Call Failed!");
    }
  }
}
