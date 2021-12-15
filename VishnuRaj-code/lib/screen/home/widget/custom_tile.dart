
import 'package:flutter/material.dart';

import 'package:newsapp/screen/home/widget/article_view.dart';

class CustomTile extends StatefulWidget {
  const CustomTile({
    Key? key,
     required this.title, required this.description, required this.url, required this.urlToImage,
  }) : super(key: key);
   
  //  final Source source;
  // final String author;
    final String title;
    final String description;
    final String url;
    final String urlToImage;
    // final DateTime publishedAt;
    // final String content;
 
  @override
  State<CustomTile> createState() =>_CustomTileState();
}
class _CustomTileState extends State<CustomTile>{
  @override
  Widget build(BuildContext context) {
       
    return GestureDetector(
      onTap:(){
        Navigator.push(context,MaterialPageRoute(builder: (context) => ArticleView(url:widget.url,)),
        );
      },
child:Padding(
  padding:EdgeInsets.all(15.0),
        child: Column(
          children: [  ClipRRect(
               borderRadius: BorderRadius.circular(14),
               child: Image.network(widget.urlToImage,
               
          )),
            ListTile(title:Text(widget.title),
            subtitle:Text(widget.description)),
          
          ]
        ),
               ),          
                );
      
      
  }
}
