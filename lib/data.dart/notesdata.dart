import 'package:flutter/material.dart';

class Notesdata extends StatelessWidget {
  movetocoursepage(BuildContext context) {
    Navigator.pushNamed(context, '/coursepage');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(50),
              height: 300,
              width: 300,
              child: Image.asset('assets/images/Upload_notes.png'),
            ),
            Container(
              margin: EdgeInsets.all(30),
              child: Text(
                  'You may find Handwritten notes by your seniors or even your classmates(rarely). Also some of the PDFs shared by your professor.'),
            ),
            InkWell(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 200,
                  child: Text(
                    'Get Quality notes',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(
                      color: Theme.of(context).buttonColor,
                      borderRadius: BorderRadius.circular(10)),
                )),
          ],
        ),
      )),
    );
  }
}
