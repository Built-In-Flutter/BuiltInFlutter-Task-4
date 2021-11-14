
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

Widget newsLogo(){
  return SizedBox(
    height: 20,
    child: Stack(children: [

     

       Container(
        width: 100,
        color: Colors.black,
      ),
      Container(
        
        width: 53,
        color: Colors.orange,

      ),
     const  Padding(
        padding:  EdgeInsets.only(left: 5),
        child:  Text("instant   news",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14),),
      ), 
     
    ],),
  );
}