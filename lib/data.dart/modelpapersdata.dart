import 'package:flutter/material.dart';

class ModelPapersData extends StatelessWidget {
  movetocoursepage(BuildContext context) {
    Navigator.pushNamed(context, '/coursepage');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(50),
            height: 300,
            width: 300,
            child: Image.asset('assets/images/model_papers.png'),
          ),
          Container(
            margin: EdgeInsets.all(30),
            child: Text(
                ' Sample papers help students analyse their strengths and weaknesses so that they can focus on weak areas to improve their results. When students work on improving their weaker sections, they perform better with practicing sample papers.'),
          ),
          InkWell(
              onTap: () => movetocoursepage(context),
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 200,
                child: Text(
                  'Get Model Papers',
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
      )),
    );
  }
}
