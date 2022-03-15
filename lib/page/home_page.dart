import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Container(
            child: const Text(
              'Good',
              textAlign: TextAlign.center,
            ),
            width: double.infinity,
          ),
          backgroundColor: Color.fromARGB(255, 17, 10, 233)),
      body: Center(
        child: Container(
          child: Text('Good!!'),
        ),
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: double.infinity,
            child: Text(
              'Fine!!',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
