import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

ThemeData themes() {
  return ThemeData(
    primarySwatch: Colors.blue,
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: Colors.black45),
    ),
    primaryTextTheme: TextTheme(
      headline3:
          TextStyle(color: Colors.indigo.shade900, fontWeight: FontWeight.w600),
      headline5: TextStyle(color: Colors.indigo.shade900),
      bodyText1: TextStyle(color: Colors.indigo.shade900),
    ),
  );
}
