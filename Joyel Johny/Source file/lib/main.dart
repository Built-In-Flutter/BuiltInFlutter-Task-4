import 'package:flutter/material.dart';
import 'package:news_app/screen/details/profile_page.dart';
import 'screen/config/themes/themes.dart';
import 'screen/home/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NewsApp',
      theme: themes(),
      debugShowCheckedModeBanner: false,
      routes: {
        ProfilePage.routeName: (ctx) => ProfilePage(),
        HomePage.routename: (ctx) => HomePage()
      },
      home: HomePage(),
    );
  }
}
