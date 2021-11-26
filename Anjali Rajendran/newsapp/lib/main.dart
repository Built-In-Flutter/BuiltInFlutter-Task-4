import 'package:flutter/material.dart';
import 'package:newsapp/screens/profile.dart';
import 'package:newsapp/screens/profile.dart';

import 'screens/home/homepage.dart';
import 'screens/config/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themes(),
      debugShowCheckedModeBanner: false,
      routes: {
        // DetailsNews.routeName: (ctx) => const DetailsNews(),
        Home.routName1: (ctx) => Home(),
      },
      home: const HomePage(),
    );
  }
}