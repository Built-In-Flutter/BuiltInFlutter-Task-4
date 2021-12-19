import 'package:flutter/material.dart';
ThemeData themes() {
  return ThemeData(
    primarySwatch: Colors.blue,
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: Colors.black54)
    ),
      primaryTextTheme: const TextTheme(
      headline4: TextStyle(color:Colors.black54),
      headline3: TextStyle(color:Colors.black54, fontWeight: FontWeight.w600),
      headline5: TextStyle(color:Colors.black54),
        headline6: TextStyle(color:Colors.black54, fontWeight: FontWeight.w600),
        bodyText1: TextStyle(color:Colors.black54),
  )
  );
}