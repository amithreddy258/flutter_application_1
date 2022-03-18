import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_application_1/data.dart/coursesdata.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widget/courses.dart';

class MyProfile extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: 400,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Image.asset('assets/images/profilepic.png',
                      fit: BoxFit.contain),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 20, left: 20, right: 10),
                    child: Text(
                      'Aman Vignesh',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 8, left: 20, right: 60),
                    child: Text(
                      '20bds003',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 197, 215, 230),
              ),
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
                      ),
                      Text(
                        'Sem :4',
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        'Dept :DSAI',
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        'Dept :Faculty Advisor: Dr. Sibasankar pandey',
                        style: TextStyle(fontSize: 10),
                      ),
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
              margin: EdgeInsets.only(left: 50, right: 50),
              alignment: Alignment.topCenter,
              height: 200,
              child: Text(
                'About',
                style: TextStyle(fontSize: 16),
              ),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 210, 235, 211),
                  borderRadius: BorderRadius.circular(20)),
            ),
            Divider(
              color: Colors.black,
              thickness: 1.0,
            ),
            // ListTile(
            //     leading: Text('SE'),
            //     trailing: CircularPercentIndicator(
            //       radius: 120.0,
            //       percent: 0.6,
            //       progressColor: Colors.green,
            //     )),
            // ListView.builder(
            //   itemBuilder: (context, index) {
            //     return Courses(
            //       item: coursechoises.select[index],
            //     );
            //   },
            //   itemCount: coursechoises.select.length,
            // ),
            Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 220, 204, 182),
                  borderRadius: BorderRadius.circular(20)),
              height: 510,
              margin: EdgeInsets.only(left: 100, right: 100),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                        child: Icon(
                          Icons.subject,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 10),
                        child: Text('SE'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50, top: 8),
                        child: CircularPercentIndicator(
                          radius: 50,
                          lineWidth: 5.0,
                          progressColor: Colors.green,
                          percent: 0.6,
                          animation: true,
                          animationDuration: 1200,
                          center: Text('60%'),
                        ),
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 0.5,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                        child: Icon(
                          Icons.subject,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 10),
                        child: Text('DBMS'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 8),
                        child: CircularPercentIndicator(
                          radius: 50,
                          lineWidth: 5.0,
                          progressColor: Colors.green,
                          percent: 0.7,
                          animation: true,
                          animationDuration: 1200,
                          center: Text('70%'),
                        ),
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 0.5,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                        child: Icon(
                          Icons.subject,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 10),
                        child: Text('ST'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 55, top: 8),
                        child: CircularPercentIndicator(
                          radius: 50,
                          lineWidth: 5.0,
                          progressColor: Colors.green,
                          percent: 0.8,
                          animation: true,
                          animationDuration: 1200,
                          center: Text('80%'),
                        ),
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 0.5,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                        child: Icon(
                          Icons.subject,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 10),
                        child: Text('OS&CC'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 8),
                        child: CircularPercentIndicator(
                          radius: 50,
                          lineWidth: 5.0,
                          progressColor: Colors.green,
                          percent: 0.5,
                          animation: true,
                          animationDuration: 1200,
                          center: Text('50%'),
                        ),
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 0.5,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                        child: Icon(
                          Icons.subject,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 10),
                        child: Text('LA'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 65, top: 8),
                        child: CircularPercentIndicator(
                          radius: 50,
                          lineWidth: 5.0,
                          progressColor: Colors.green,
                          percent: 0.9,
                          animation: true,
                          animationDuration: 1200,
                          center: Text('90%'),
                        ),
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 0.5,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                        child: Icon(
                          Icons.subject,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 10),
                        child: Text('GBP'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50, top: 8),
                        child: CircularPercentIndicator(
                          radius: 50,
                          lineWidth: 5.0,
                          progressColor: Colors.green,
                          percent: 0.7,
                          animation: true,
                          animationDuration: 1200,
                          center: Text('70%'),
                        ),
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 0.5,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                        child: Icon(
                          Icons.subject,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 10),
                        child: Text('DBA'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50, top: 8),
                        child: CircularPercentIndicator(
                          radius: 50,
                          lineWidth: 5.0,
                          progressColor: Colors.green,
                          percent: 0.4,
                          animation: true,
                          animationDuration: 1200,
                          center: Text('40%'),
                        ),
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
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 120, right: 120),
              child: Align(
                alignment: Alignment.center,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () async {
                        final url = 'https://www.youtube.com/';
                        launch(url);
                      },
                      child: Container(
                        child: Icon(Icons.icecream),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        final url = 'https://www.google.co.in/';
                        if (await canLaunch(url)) {
                          launch(url);
                        }
                      },
                      child: Container(
                        child: Icon(Icons.surfing_rounded),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
