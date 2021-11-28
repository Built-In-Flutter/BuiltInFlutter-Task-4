import 'package:flutter/material.dart';
import 'package:newsapp/screen/details/detail_news.dart';
import 'screen/home/home_page.dart';
import 'dart:io';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Arun_New',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Homepage(),
        debugShowCheckedModeBanner: false,
        routes: {
          DetailNews.routName: (ctx) => DetailNews(),
        });
  }
}






//
//void main(){
//    HttpOverrides.global = new MyHttpOverrides();
//    runApp(new MyApp());
//}