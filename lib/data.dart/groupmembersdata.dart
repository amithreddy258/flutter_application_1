import 'package:flutter/material.dart';

class GroupMemDetails extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Group Details'),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Text('Group Member 1'),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Text('Group Member 2'),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Text('Group Member 3'),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Text('Group Member 4'),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Text('Group Member 5'),
              )
            ],
          )
        ],
      ),
    );
  }
}
