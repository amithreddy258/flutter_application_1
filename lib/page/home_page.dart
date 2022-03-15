import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return HomePagestate();
  }
}

class HomePagestate extends State<HomePage> {
  int activeIndex = 0;
  final controller = CarouselController();
  Widget buildindicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: imageassets.length,
        effect: SlideEffect(
          dotHeight: 8,
          dotWidth: 8,
          dotColor: Colors.black,
        ),
      );
  Widget buildButtons({bool strech = false}) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: previous,
            child: Icon(
              Icons.arrow_back,
              size: 20,
            ),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(32),
            ),
          ),
          strech
              ? Spacer()
              : SizedBox(
                  width: 32,
                ),
          ElevatedButton(
            onPressed: next,
            child: Icon(
              Icons.arrow_forward,
              size: 30,
            ),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(32),
            ),
          ),
        ],
      );
  void next() => controller.nextPage(duration: Duration(milliseconds: 500));
  void previous() =>
      controller.previousPage(duration: Duration(milliseconds: 500));
  final imageassets = [
    'assets/images/otherprof.png',
    'assets/images/quiz.png',
    'assets/images/syllabus.png',
    'assets/images/textbooks.png',
    'assets/images/Trackyourprogress.png',
  ];

  movetologinpage(BuildContext context) {
    Navigator.pushNamed(context, '/');
  }

  movetocoursepage(BuildContext context) {
    Navigator.pushNamed(context, '/coursepage');
  }

  Widget build(BuildContext context) {
    Widget buildImage(var image, int index) => Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          // color: Colors.grey,
          child: Image.asset(
            image,
            fit: BoxFit.contain,
          ),
        );

    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Container(
            alignment: Alignment.center,
            child: const Text(
              'Hi Aman Vignesh',
              style: TextStyle(color: Colors.black),
            ),
            width: double.infinity,
          ),
          backgroundColor: Color.fromARGB(255, 214, 210, 210),
          elevation: 1.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: () => movetocoursepage(context),
                child: CarouselSlider.builder(
                  carouselController: controller,
                  options: CarouselOptions(
                      initialPage: 0,
                      height: 200,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) => {
                            setState(
                              () => activeIndex = index,
                            )
                          }),
                  itemCount: imageassets.length,
                  itemBuilder: (context, index, realindex) {
                    final image = imageassets[index];
                    return buildImage(image, index);
                  },
                ),
              ),
              SizedBox(height: 10),
              buildindicator(),
              SizedBox(height: 15),
              // buildButtons(),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 50.0, horizontal: 30.0),
                      child: InkWell(
                        onTap: () => movetocoursepage(context),
                        child: Container(
                          height: 65,
                          width: 140,
                          alignment: Alignment.center,
                          child: Text(
                            'Model Papers',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 18),
                          ),
                          // decoration: BoxDecoration(
                          //     color: Colors.white,
                          //     borderRadius: BorderRadius.circular(20),
                          //     boxShadow: [
                          //       BoxShadow(
                          //           color: Colors.black,
                          //           blurRadius: 2.0,
                          //           offset: Offset(2.0, 2.0))
                          //     ]),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 20,
                    // ),
                    SizedBox(
                      width: 150,
                      height: 100,
                      child: Image.asset('assets/images/model_papers.png',
                          fit: BoxFit.contain),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.asset(
                          'assets/images/pyq.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => movetocoursepage(context),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 50.0, horizontal: 30.0),
                        child: Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 140,
                          child: Text(
                            'Previous Year Question papers',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 18),
                          ),
                          // decoration: BoxDecoration(
                          //     color: Colors.white,
                          //     borderRadius: BorderRadius.circular(20),
                          //     boxShadow: [
                          //       BoxShadow(
                          //         color: Colors.black,
                          //         blurRadius: 2.0,
                          //         offset: Offset(1.0, 2.0),
                          //       )
                          //     ]),
                          // alignment: Alignment.center,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 350,
                child: Text(
                  'Upload your notes +',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 4,
                      // offset: Offset(2.0, 2.0),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () => movetocoursepage(context),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 40, horizontal: 25),
                        child: Container(
                          alignment: Alignment.center,
                          height: 65,
                          width: 140,
                          child: Text('Notes'),
                          // decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(20),
                          //     color: Colors.white,
                          //     boxShadow: [
                          //       BoxShadow(
                          //           color: Colors.black,
                          //           blurRadius: 2.0,
                          //           offset: Offset(2.0, 2.0))
                          //     ]),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      width: 100,
                      child: Image.asset(
                        'assets/images/notes.png',
                        fit: BoxFit.contain,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        backgroundColor: Colors.white60,
        drawer: Mydrawer());
  }
}
