import 'package:flutter/material.dart';
import 'package:flutter_application_1/data.dart/homepagedata.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/widget/appbar.dart';
import 'package:flutter_application_1/widget/drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_1/widget/themes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_application_1/widget/config.dart';

import '../widget/product_widget.dart';

class HomePage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return HomePagestate();
  }
}

class HomePagestate extends State<HomePage> {
  // var colorindex = 0;
  bool isSwitch = true;
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
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).cardColor),
        title: Container(
          alignment: Alignment.center,
          child: Row(
            children: [
              Text(
                'Hi Aman Vignesh',
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
              SizedBox(
                width: 30,
              ),
              IconButton(
                icon: const Icon(
                  Icons.brightness_4,
                ),
                onPressed: () => currentTheme.toggleTheme(),
              )
            ],
          ),
          width: double.infinity,
        ),
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(children: <Widget>[
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
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ProductWidget(
                item: choices.product[index],
                index: index,
              );
            },
            itemCount: choices.product.length,
          ),
        ]),
      ),
      drawer: Mydrawer(),
    );
  }

  // Widget buildswitch() => Switch.adaptive(
  //       value: isSwitch,
  //       onChanged: (value) => callsetstate(value),
  //     );
}
