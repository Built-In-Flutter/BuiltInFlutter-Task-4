import 'dart:convert';
import 'package:newappui/model/article_model.dart';
import 'package:http/http.dart' as http;

class News {
  

  Future<Article> getNews(String category) async {
    String url =
       "https://newsapi.org/v2/top-headlines?country=in&apiKey=85bacaa40bd64fd887b4f31563df874f";
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      //print(response.body);
      return Article.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Api not called successfully");
    }
  }
}
