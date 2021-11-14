import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instantnews/portfolio/portfolio.dart';
import 'newsapp/newsapp.dart';
import 'package:flutter/painting.dart';





void main() {
  runApp(Main());
}

class Main  extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),);
  }
}

class HomePage  extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
            Text("Flutter Tasks ",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
            Padding(
              padding:  EdgeInsets.only(right: 35,top: 30),
              child: Column(
                children: [
                  InkWell(
                onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Portfolio())),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Icon(Icons.navigate_next),
                  Text("Portfolio",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ],),
              ),

              InkWell(
                onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (_)=>NewsApp())),
                child: Padding(
                  padding:  EdgeInsets.only(left: 10,top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Icon(Icons.navigate_next),
                    Text("News App",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  ],),
                ),
              )
                ],
              ),
            )
      ],),
    );
  }
}