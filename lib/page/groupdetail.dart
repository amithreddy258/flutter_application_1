import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/chackbocxist.dart';
import 'package:flutter_application_1/widget/groupcolabplatform.dart';

class GroupDetails extends StatefulWidget {
  @override
  State<GroupDetails> createState() => GroupDetailsState();
}

class GroupDetailsState extends State<GroupDetails> {
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Tab View'),
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Tab 1',
              ),
              Tab(text: 'Tab 2'),
              Tab(text: 'Tab 3')
            ],
          ),
        ),
        body: TabBarView(children: [
          GroupColabPlatform(),
          CheckBoxListTile(),
          Center(
            child: Text('View your Shared Docs!!!!!!!'),
          )
        ]),
      ),
    );
  }
}
