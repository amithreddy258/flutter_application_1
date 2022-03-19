import 'package:flutter/material.dart';

class GroupDetails extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 175, 172, 175),
              ),
              margin: EdgeInsets.all(20),
              height: 275,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                          margin: EdgeInsets.all(20),
                          height: 95,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black,
                          ),
                          child: Align(
                            alignment: Alignment(-0.75, -0.5),
                            child: Text(
                              'Checklist 1',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        )),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(20),
                            height: 95,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black,
                            ),
                            child: Align(
                              alignment: Alignment(-0.75, -0.5),
                              child: Text(
                                'Checklist 1',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                          margin: EdgeInsets.all(20),
                          height: 95,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black,
                          ),
                          child: Align(
                            alignment: Alignment(-0.75, -0.5),
                            child: Text(
                              'Checklist 1',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        )),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(20),
                            height: 95,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black,
                            ),
                            child: Align(
                              alignment: Alignment(-0.75, -0.5),
                              child: Text(
                                'Checklist 1',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                          margin: EdgeInsets.all(20),
                          height: 95,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black,
                          ),
                          child: Align(
                            alignment: Alignment(-0.75, -0.5),
                            child: Text(
                              'Checklist 1',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        )),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(20),
                            height: 95,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black,
                            ),
                            child: Align(
                              alignment: Alignment(-0.75, -0.5),
                              child: Text(
                                'Checklist 1',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black26,
              ),
              margin: EdgeInsets.all(20),
              height: 150,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black,
                      ),
                      child: Align(
                        alignment: Alignment(-0.75, -0.5),
                        child: Text(
                          'Group Colab platform 1',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black,
                      ),
                      child: Align(
                        alignment: Alignment(-0.75, -0.5),
                        child: Text(
                          'Group colab Platform 2',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Text(
                'Share Amoung Group members',
                style: TextStyle(color: Colors.white),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
