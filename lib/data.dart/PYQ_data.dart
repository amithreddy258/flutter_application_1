import 'package:flutter/material.dart';

class PYQData extends StatelessWidget {
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
              child: Image.asset('assets/images/pyq.png'),
            ),
            Container(
              margin: EdgeInsets.all(30),
              child: Text(
                  'Chech out some previous years question papers along with solutions in PDF format. This will help you to understand the pattern of questions asked by the examiners in the examination and You can also practice managing your time by attempting these like a mock exam'),
            ),
            InkWell(
                onTap: () => movetocoursepage(context),
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 200,
                  child: Text(
                    'Get previous year question papers',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                )),
          ],
        ),
      )),
    );
  }
}
