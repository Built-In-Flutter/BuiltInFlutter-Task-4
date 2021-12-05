import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:profileapp/model/article_model.dart';
class News{
  String url="https://newsapi.org/v2/top-headlines?country=in&apiKey=b3c6e786109944f390984c8943b9f337";
  Future<Article> getNews()async{
    var response= await http.get(Uri.parse(url));
    if (response.statusCode == 200){
      print(response.body);
      return Article.fromJson(jsonDecode(response.body)
      );
    }
    else{
      throw Exception("API not called succesfully");
    }
  }

}