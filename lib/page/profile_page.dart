import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: Color.fromARGB(255, 197, 215, 230),
            margin: EdgeInsets.only(top: 20),
            height: 100,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(30),
                  width: 60,
                  height: 60,
                  child: Image.asset('assets/images/groupicon.png'),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        'Aman Vignesh',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Text(
                      '20bds003@iitdwd.ac.in',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 1.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            alignment: Alignment.topLeft,
            height: 400,
            child: Text(
              'About',
              style: TextStyle(fontSize: 16),
            ),
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 210, 235, 211)),
          )
        ],
      ),
    );
  }
}
