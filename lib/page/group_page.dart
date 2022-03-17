import 'package:flutter/material.dart';
import 'package:flutter_application_1/data.dart/coursesdata.dart';
import 'package:flutter_application_1/data.dart/groupdata.dart';
import 'package:flutter_application_1/widget/groupselect.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class GroupPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   backgroundColor: Theme.of(context).buttonColor,
      //   child: Icon(Icons.add),
      // ),
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: <Widget>[
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: groupchoices.select.length,
              itemBuilder: (context, index) {
                return GroupSelect(
                  item: groupchoices.select[index],
                );
              },
            ),
            buildButton(
                text: 'Add',
                onClicked: () => showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(10),
                        ),
                      ),
                      isDismissible: false,
                      isScrollControlled: true,
                      context: context,
                      builder: (context) => buildSheet(),
                    )),
          ],
        ),
      ),
    );
  }

  Widget buildButton({required String text, required VoidCallback onClicked}) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          height: 60,
          width: 60,
          margin: EdgeInsets.all(20.0),
          alignment: Alignment.center,
          child: Icon(
            Icons.add,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60), color: Colors.grey),
        ),
      );
  Widget buildSheet() => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Create New Group'),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter Group name',
                label: Text('Group name'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter Group members',
                label: Text('Group members'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter URL',
                label: Text('Group DP'),
              ),
            ),
          )
        ],
      );
}
