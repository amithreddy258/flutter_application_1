import 'package:flutter/material.dart';
import 'package:flutter_application_1/data.dart/coursesdata.dart';

class Courses extends StatelessWidget {
  movetoquizpage(BuildContext context) {
    Navigator.pushNamed(context, '/quizpage');
  }

  final coursechoice item;

  Courses({required this.item});

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        child: ListTile(
          onTap: () => movetoquizpage(context),
          title: Text(item.coursename),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        ),
      ),
    );
  }
}
