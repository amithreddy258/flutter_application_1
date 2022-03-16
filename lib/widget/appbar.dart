import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      title: Container(
        alignment: Alignment.center,
        child: const Text(
          'Hi Aman',
          style: TextStyle(color: Colors.white),
        ),
        width: double.infinity,
      ),
      backgroundColor: Colors.deepPurple,
      elevation: 1.0,
    );
  }

  Size get PreferredSize => Size.fromHeight(kToolbarHeight);

  @override
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
