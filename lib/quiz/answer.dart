import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final answer;
  final answertext;
  Answers(this.answer, this.answertext);

  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 200,
      margin: EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: answer,
        child: Text(answertext),
        style: ElevatedButton.styleFrom(
          primary: Colors.deepPurple,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        ),
      ),
    );
  }
}
