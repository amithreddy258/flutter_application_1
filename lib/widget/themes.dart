import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme with ChangeNotifier {
  static bool _isDarkTheme = false;
  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

  static ThemeData get lightTheme {
    //1
    return ThemeData(
        //2
        primaryColor: Colors.black,
        canvasColor: Colors.green[50],
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Montserrat', //3
        buttonTheme: ButtonThemeData(
          // 4
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: Colors.black,
        ));
  }

  static ThemeData get darkTheme {
    return ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.black,
        canvasColor: Colors.grey[850],
        fontFamily: 'Montserrat',
        textTheme: ThemeData.dark().textTheme,
        buttonTheme: ButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: Colors.purple[100],
        ));
  }

  static Color creamcolor = Color(0xfff5f5f5);
  static Color darkcream = Color(0xff263238);
  static Color darkbluish = Color(0x0B3948);
  static Color lighbluish = Color(0xffb47bc);
}
