import 'package:flutter/material.dart';
import 'package:flutter_application_1/data.dart/groupdata.dart';

class GroupSelect extends StatelessWidget {
  movetogroupdetailspage(BuildContext context) {
    return Navigator.pushNamed(context, '/groupdetails');
  }

  final groupchoice item;
  GroupSelect({required this.item}) : assert(item != null);
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Card(
        elevation: 0.0,
        color: Theme.of(context).canvasColor,
        child: ListTile(
          onTap: () => movetogroupdetailspage(context),
          title: Text(item.name),
          leading: Image.asset(item.image),
        ),
      ),
    );
  }
}
