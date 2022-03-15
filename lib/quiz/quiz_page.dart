import 'package:flutter/material.dart';
import 'package:flutter_application_1/quiz/answer.dart';
import 'package:flutter_application_1/quiz/question.dart';

class QuizPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return QuizPagestate();
  }
}

int totalscore = 0;

class QuizPagestate extends State<QuizPage> {
  movetohomepage(BuildContext context) {
    totalscore = 0;
    Navigator.pushNamed(context, '/homepage');
  }

  var questions = [
    {
      'questiontext': 'what\'s your favorite color',
      'answers': [
        {'text': 'Green', 'score': 1},
        {'text': 'Yellow', 'score': 2},
        {'text': 'Blue', 'score': 3},
        {'text': 'Orange', 'score': 4}
      ],
    },
    {
      'questiontext': 'what\s your favorite animal',
      'answers': [
        {'text': 'Dog', 'score': 1},
        {'text': 'Cat', 'score': 2},
        {'text': 'Panda', 'score': 3},
        {'text': 'Hamster', 'score': 4},
      ],
    },
    {
      'questiontext': 'what\s your favorite tiffin',
      'answers': [
        {'text': 'Masala dosa', 'score': 1},
        {'text': 'Masala bajji', 'score': 2},
        {'text': 'Idly', 'score': 3},
        {'text': 'Vada', 'score': 4}
      ],
    },
  ];
  answers(int score) {
    totalscore = totalscore + score;
    setState(() {
      queindex = queindex + 1;
    });
    if (queindex < questions.length) {
      print('We have more questions');
    }
  }

  var queindex = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      body: queindex < questions.length
          ? Column(children: [
              SizedBox(
                height: 100,
                width: 20,
              ),
              Container(
                child: Questions(
                  questions[queindex]['questiontext'],
                ),
                height: 50,
                width: double.infinity,
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 10,
                width: 20,
              ),
              // ElevatedButton(
              //   onPressed: answers,
              //   child: Text('Answer 1'),
              //   style: ElevatedButton.styleFrom(
              //     primary: Colors.deepPurple,
              //     padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              //   ),
              // ),
              ...(questions[queindex]['answers'] as List<Map<String, dynamic>>)
                  .map((answer) {
                return Answers(() => answers(answer['score']), answer['text']);
              }).toList()
            ])
          : Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 150,
                  ),
                  Container(
                    margin: EdgeInsets.all(30),
                    child: Text(
                        'Questions completed and total markrs are $totalscore'),
                  ),
                  InkWell(
                    onTap: () => movetohomepage(context),
                    child: Container(
                      margin: EdgeInsets.all(30),
                      alignment: Alignment.center,
                      height: 60,
                      width: 100,
                      child: Text(
                        'Move to Homepage',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
