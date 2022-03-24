import 'package:flutter/material.dart';
import 'package:flutter_application_1/data.dart/PYQ_data.dart';
import 'package:flutter_application_1/page/chackbocxist.dart';
import 'package:flutter_application_1/page/groupdetail.dart';
import 'package:flutter_application_1/data.dart/groupmembersdata.dart';
import 'package:flutter_application_1/data.dart/modelpapersdata.dart';
import 'package:flutter_application_1/data.dart/notesdata.dart';
import 'package:flutter_application_1/page/course_page.dart';
import 'package:flutter_application_1/page/group_page.dart';
import 'package:flutter_application_1/page/login_page.dart';
import 'package:flutter_application_1/page/profile_page.dart';
import 'package:flutter_application_1/page/register_page.dart';
import 'package:flutter_application_1/quiz/quiz_page.dart';
import 'package:flutter_application_1/widget/themes.dart';
import 'package:flutter_application_1/widget/config.dart';
import 'package:google_fonts/google_fonts.dart';

import 'page/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      //2
      setState(() {});
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: currentTheme.currentTheme,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      initialRoute: '/registerpage',
      routes: {
        '/': (context) => LoginPage(),
        '/registerpage':(context) => RegisterPage(),
        '/homepage': (context) => HomePage(),
        '/coursepage': (context) => CoursePage(),
        '/quizpage': (context) => QuizPage(),
        '/pyqdata': (context) => PYQData(),
        '/modelpapersdata': (context) => ModelPapersData(),
        '/notesdata': (context) => Notesdata(),
        '/grouppage': (context) => GroupPage(),
        '/groupmemdetails': (context) => GroupMemDetails(),
        '/profilepage': (context) => MyProfile(),
        '/groupdetail': (context) => GroupDetails(),
      },
    );
  }
}
