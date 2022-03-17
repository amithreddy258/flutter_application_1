import 'package:flutter/material.dart';
import 'package:flutter_application_1/data.dart/PYQ_data.dart';
import 'package:flutter_application_1/data.dart/groupdetail.dart';
import 'package:flutter_application_1/data.dart/modelpapersdata.dart';
import 'package:flutter_application_1/data.dart/notesdata.dart';
import 'package:flutter_application_1/page/course_page.dart';
import 'package:flutter_application_1/page/group_page.dart';
import 'package:flutter_application_1/page/login_page.dart';
import 'package:flutter_application_1/page/profile_page.dart';
import 'package:flutter_application_1/quiz/quiz_page.dart';
import 'package:flutter_application_1/widget/themes.dart';
import 'package:google_fonts/google_fonts.dart';

import 'page/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static var values;
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lighttheme(context),
      darkTheme: MyTheme.darktheme(context),
      initialRoute: '/homepage',
      routes: {
        '/': (context) => LoginPage(),
        '/homepage': (context) => HomePage(),
        '/coursepage': (context) => CoursePage(),
        '/quizpage': (context) => QuizPage(),
        '/pyqdata': (context) => PYQData(),
        '/modelpapersdata': (context) => ModelPapersData(),
        '/notesdata': (context) => Notesdata(),
        '/grouppage': (context) => GroupPage(),
        '/groupdetails': (context) => GroupDetails(),
        '/profilepage': (context) => MyProfile(),
      },
    );
  }
}

class getvalue extends MyApp {
  bool switched = true;
  getvalue({required this.switched});
  setvalue() {
    MyApp.values = switched;
  }
}
