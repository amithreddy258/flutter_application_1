import 'package:flutter/material.dart';

class Courses extends StatelessWidget {
  movetoquizpage(BuildContext context) {
    Navigator.pushNamed(context, '/quizpage');
  }

  nice(BuildContext context) {
    Navigator.pushNamed(context, '/quizpage');
  }

  final text;

  Courses(this.text);

  Widget build(BuildContext context) {
    return InkWell(
      onTap: movetoquizpage(context),
      child: Container(
        alignment: Alignment.center,
        height: 60,
        width: 200,
        margin: EdgeInsets.all(5),
        child: Text(text),
        decoration: BoxDecoration(color: Colors.white),
      ),
    );
  }
}
