import 'package:flutter/material.dart';
import 'package:news/screen/details/detail_news.dart';
import 'package:news/screen/profile/profile.dart';

import 'screen/config/themes/themes.dart';
import 'screen/home/home_page.dart';

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
        Profile.routeName: (ctx) => const Profile(),
      },
      home: const HomePage(),
    );
  }
}
