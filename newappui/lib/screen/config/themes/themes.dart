import 'package:flutter/material.dart';

ThemeData themes() {
  return ThemeData(
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      bodyText1: TextStyle(color: Colors.black45),
    ),
    primaryTextTheme: TextTheme(
      headline4: TextStyle(
        color: Colors.blueGrey,
        fontWeight: FontWeight.w600,
      ),
      headline5: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.w600),
      bodyText1: TextStyle(color: Colors.blueGrey, fontSize: 13),
      bodyText2: TextStyle(color: Colors.blueGrey.shade800, fontSize: 13),
    ),
  );
}
