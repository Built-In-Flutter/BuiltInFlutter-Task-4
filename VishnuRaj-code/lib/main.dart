import 'package:flutter/material.dart';
import 'package:newsapp/screen/home/details/detailNews.dart';
import 'screen/home/config/themes/themes.dart';
import 'screen/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NEWS APP',
      theme: themes(),
      routes: {
        DetailNews.routeName:(ctx)=>DetailNews(),
      },
      home:Homepage(),
    );
  }

  
}