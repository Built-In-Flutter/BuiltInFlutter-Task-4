import 'package:http/http.dart' as http;
import 'package:instantnews/newsapp/values/values.dart';

import 'models/articles.dart';
import 'dart:convert';

class News {

   //List news=[];

  Future<Article> getNews() async{

   
   var response =await  http.get(Uri.parse(url));

    

    if(response.statusCode==200){
      
      
      return Article.fromJson(jsonDecode(response.body));
     
            

      
  }
  else{
    throw(Exception("error in fetching data"));
  }
    
  }

}