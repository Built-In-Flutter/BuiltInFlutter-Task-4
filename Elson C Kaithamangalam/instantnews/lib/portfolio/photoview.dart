import 'package:flutter/material.dart';
import 'package:instantnews/newsapp/values/values.dart';

class PhotoView  extends StatelessWidget {
 
  
  @override
  Widget build(BuildContext context) {
    final double mediaqueryWidth=MediaQuery.of(context).size.width;
    String imageUrl="https://media-exp1.licdn.com/dms/image/C5603AQG2zZmzfbZEfQ/profile-displayphoto-shrink_200_200/0/1633785659484?e=1642636800&v=beta&t=w20xGScTvAFxyxz6HP7q6QaSGr3DGA9qpIWfiyEjLRA";
    return 
      Container(
          
          
           
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow:[BoxShadow(color: Colors.yellow.shade600,spreadRadius: (mediaqueryWidth*0.4)*0.03)],
            image: DecorationImage(image: NetworkImage(imageUrl),fit: BoxFit.cover)
            
           ),
          height: mediaqueryWidth*0.4,
          width:mediaqueryWidth*0.4,);
    
  }
}