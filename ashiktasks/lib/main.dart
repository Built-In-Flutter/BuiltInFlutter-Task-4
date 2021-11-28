import 'package:ashiktasks/HomePage.dart';
import 'package:ashiktasks/Portfolio.dart';
import 'package:ashiktasks/themes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themes(),
      debugShowCheckedModeBanner: false,
      routes: {
        Portfolio.routeName: (ctx)=> Portfolio(),
      },
      home: HomePage(),
    );
  }
}
