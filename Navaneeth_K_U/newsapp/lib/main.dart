import 'package:flutter/material.dart';
import 'package:portfolio/screen/config/themes/themes.dart';
import 'package:portfolio/screen/details/detailed_news.dart';
import 'screen/home/home_page.dart';
import 'screen/details/detailed_news.dart';
import 'package:http/http.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themes(),
      debugShowCheckedModeBanner: false,
      routes: {DetailedNews.routeName: (ctx) => DetailedNews()},
      home: Homepage(),
    );
  }
}
