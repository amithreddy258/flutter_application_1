import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final question;
  Questions(this.question);

  Widget build(BuildContext context) {
    return Container(
      child: Text(
        question,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
