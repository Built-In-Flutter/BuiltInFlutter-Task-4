

import 'package:flutter/material.dart';
import 'package:newsapp/api/news.dart';
import 'package:newsapp/model/article_model.dart';
import 'custom_tile.dart';

class RecentNews extends StatefulWidget {
 
  const RecentNews({
    Key? key,
     
    required this.category,
  }) : super(key: key);

  
  final String category;
  @override
State<RecentNews> createState() =>_RecentNewsState();
}
class _RecentNewsState extends State<RecentNews>{
  
 
    
  @override
  Widget build(BuildContext context) { 
    
    return Expanded(
      child: FutureBuilder<List<Article>>(
        future: News().getNews(widget.category),
     builder: (context, snapshot) {
       
       if(snapshot.hasData){
          return ListView.builder(
              shrinkWrap:true,
            itemCount: snapshot.data!.length,
            itemBuilder: (BuildContext context, int index) {
              return CustomTile(
                  
                title:snapshot.data![index].title,
                description:snapshot.data![index].description,
                url:snapshot.data![index].url,
                urlToImage:snapshot.data![index].urlToImage,
            
          );
            }

      );
       }else if(snapshot.hasError){
         return Text(snapshot.error.toString());
       }else{
         return CircularProgressIndicator(
           
      );
       }
  
      } )
    );
     
}
}