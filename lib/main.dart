import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/course_page.dart';
import 'package:flutter_application_1/page/login_page.dart';
import 'package:flutter_application_1/quiz/quiz_page.dart';
import 'package:flutter_application_1/widget/themes.dart';
import 'package:google_fonts/google_fonts.dart';

import 'page/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lighttheme(context),
      darkTheme: MyTheme.darktheme(context),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/homepage': (context) => HomePage(),
        '/coursepage': (context) => CoursePage(),
        '/quizpage': (context) => QuizPage(),
      },
    );
  }
}
