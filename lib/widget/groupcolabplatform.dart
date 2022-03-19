import 'package:flutter/material.dart';

class GroupColabPlatform extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          width: double.infinity,
          height: 40,
          margin: EdgeInsets.all(20),
          child: Align(
            alignment: Alignment(-0.75, -0.25),
            child: Text(
              'Doc 1',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        Container(
          width: double.infinity,
          height: 40,
          margin: EdgeInsets.all(20),
          child: Align(
            alignment: Alignment(-0.75, -0.25),
            child: Text(
              'Doc 1',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        Container(
          width: double.infinity,
          height: 40,
          margin: EdgeInsets.all(20),
          child: Align(
            alignment: Alignment(-0.75, -0.25),
            child: Text(
              'Doc 1',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(30),
          ),
        )
      ],
    ));
  }
}
