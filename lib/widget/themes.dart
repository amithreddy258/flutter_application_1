import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lighttheme(BuildContext context) => ThemeData(
        cardColor: Colors.white,
        canvasColor: creamcolor,
        buttonColor: darkcream,
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      );
  static ThemeData darktheme(BuildContext context) => ThemeData(
      cardColor: Colors.white,
      canvasColor: darkbluish,
      buttonColor: lighbluish,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
      ));
  static Color creamcolor = Color(0xfff5f5f5);
  static Color darkcream = Color(0xff263238);
  static Color darkbluish = Color(0x0B3948);
  static Color lighbluish = Color(0xffb47bc);
}
