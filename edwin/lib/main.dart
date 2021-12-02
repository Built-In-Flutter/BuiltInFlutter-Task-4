import 'package:flutter/material.dart';
import 'Screens/config/themes/themes.dart';
import 'Screens/details/detail_news.dart';
import 'Screens/home/widgets/recent_news.dart';
import 'Screens/profile/profile.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NewsApp',
      theme: Themes(),
      debugShowCheckedModeBanner: false,
      routes: {
        Profile.routename: (ctx) => Profile(),
        DetailNews.routename: (ctx) => DetailNews(),
      },
      home: RecentNews(),
    );
  }

  
}