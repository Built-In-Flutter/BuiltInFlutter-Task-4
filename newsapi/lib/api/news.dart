import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newsapi/Model/article_model.dart';

class News{
  String url ="https://newsapi.org/v2/top-headlines?country=in&apiKey=cd79fff3bc1f495f82c4138d5c26fee4";
  Future<Article> getNews()async{

    var response =await http.get(Uri.parse(url));
    if(response.statusCode==200){

      return Article.fromJson(jsonDecode(response.body));

    }else{
      throw Exception("API call not successful");
    }
  }
}
