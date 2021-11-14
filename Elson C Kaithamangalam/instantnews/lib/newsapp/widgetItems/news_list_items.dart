import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';








  Widget newsListItems(String title,String imageurl){
    
  return
       ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          child: Image(image: NetworkImage(imageurl),height: 200,width: 100,),
        ),
        title: Text(title,maxLines: 2,style: TextStyle(fontSize: 15),),

      );
}

