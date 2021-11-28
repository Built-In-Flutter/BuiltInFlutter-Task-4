import 'package:flutter/material.dart';

ThemeData themes() {
  return ThemeData(
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      bodyText1:TextStyle(color: Colors.black26),
    ),

    primaryTextTheme: TextTheme(
      headline5: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      headline6: TextStyle(
        color: Colors.indigo
      ),
      )
  
  );
}
