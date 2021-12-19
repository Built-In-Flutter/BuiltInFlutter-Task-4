import 'package:flutter/material.dart';
import 'package:newzera/screen/aboutus.dart';
import 'screen/config/themes/themes.dart';
import 'screen/details/detail_news.dart';
import 'screen/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      theme: themes(),
      debugShowCheckedModeBanner: false,
      routes: {
        DetailNews.routeName: (ctx) => DetailNews(),
        AboutUS.routeName: (ctx) => AboutUS(),
      },
      home: Homepage(),
    );
  }
}
