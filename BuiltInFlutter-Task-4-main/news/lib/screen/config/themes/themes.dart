import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themes() {
  return ThemeData(
      primarySwatch: Colors.blue,
      textTheme: TextTheme(
        bodyText1: TextStyle(
            color: Colors.black45,
            fontFamily: GoogleFonts.poppins().fontFamily),
      ),
      primaryTextTheme: TextTheme(
        headline6: TextStyle(
            color: Colors.blueGrey,
            fontFamily: GoogleFonts.poppins().fontFamily),
        headline4: TextStyle(
            color: Colors.blueGrey,
            fontFamily: GoogleFonts.poppins().fontFamily),
        headline3: TextStyle(
            color: Colors.blueGrey,
            fontWeight: FontWeight.w700,
            fontFamily: GoogleFonts.poppins().fontFamily),
        bodyText1: TextStyle(
            color: Colors.blueGrey,
            fontFamily: GoogleFonts.poppins().fontFamily),
      ));
}
