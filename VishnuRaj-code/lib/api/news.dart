import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newsapp/model/article_model.dart';
  class News{
    
    Future<List<Article>>getNews(String category)async{
     String url ='https://newsapi.org/v2/top-headlines?country=in&apiKey=493cf1d1db874e6595b36b7b17acd4c9';
      var response=await http.get(Uri.parse(url));
      if(response.statusCode == 200){
        Map<String, dynamic> _json = json.decode(response.body);
         List<dynamic> body = _json['articles'];
          List<Article> articles = [];
           body.forEach((element) {
        try {
          articles.add(Article.fromJson(element));
        } catch (_){}
      });
        return articles;
        print(response.body);
      }
      else
      throw 
      Exception(("Can't get the Articles"));
    }
  }