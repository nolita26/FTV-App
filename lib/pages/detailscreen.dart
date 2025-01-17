import 'package:flutter/material.dart';
import 'package:ftvapp/theme/color/light_color.dart';
import 'package:ftvapp/source/video_player.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({Key key}) : super(key: key);

  double width;

  Widget _header(BuildContext context) {
    var width = MediaQuery
        .of(context)
        .size
        .width;
    return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      child: Container(
        height: 400,
        width: width,
        decoration: BoxDecoration(
          color: LightColor.purple,
        ),
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
                top: 30,
                right: -100,
                child: _circularContainer(300, LightColor.lightpurple)),
            Positioned(
                top: -100,
                left: -45,
                child: _circularContainer(width * .5, LightColor.darkpurple)),
            Positioned(
                top: -180,
                right: -30,
                child: _circularContainer(width * .7, Colors.transparent,
                    borderColor: Colors.white38)),
            Positioned(
              top: 30,
              left: 0,
              child: Container(
                width: width,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
//                              Text(
//                                "Search courses",
//                                style: TextStyle(
//                                    color: Colors.white,
//                                    fontWeight: FontWeight.w500),
//                              ),
                        Text(
                          "Bussiness foundation: \n Learn & improve your \n business skills",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Learn & practice your business skills as well as techniques to work in different dimensions",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 40,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Container(
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(90),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.star,
                                          size: 18),
                                    ),
                                    Text(
                                      "4.3",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 5),
                              Container(
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.person_outline,
                                          size: 18),
                                    ),
                                    Text(
                                      "2,458 Enrolled",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 5),
                              Container(
                                width: 130,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.play_arrow,
                                          size: 18),
                                    ),
                                    Text(
                                      "1 total hour",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _circularContainer(double height, Color color,
      {Color borderColor = Colors.transparent, double borderWidth = 2}) {
    return Container(
      height: height,
      width: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(color: borderColor, width: borderWidth),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  _header(context),
                  SizedBox(height: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "\$45.00",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                        ),
                      ),
                  ]),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right:10.0),
                    child: Container(
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Enroll now',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            letterSpacing: 2,
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right:10.0),
                    child: Container(
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                        color: LightColor.lightpurple,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Add to cart',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            letterSpacing: 2,
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  ),
                      Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                 Text("Course Content",
                                     style: TextStyle(
                                       fontSize: 24,
                                       color: Color(0xFF0D1333),
                                       fontWeight: FontWeight.bold,
                                     ),
                                 ),
                                SizedBox(height: 20),
                                CourseContent(
                                  number: "01",
                                  duration: 5.35,
                                  title: "Welcome to the Course",
                                  isDone: true,
                                ),
                                CourseContent(
                                    number: '02',
                                    duration: 19.04,
                                    title: "Beauty Care - Intro",
                                    isDone: true,
                                ),
                                CourseContent(
                                    number: '03',
                                    duration: 15.35,
                                    title: "Beauty Care Process",
                                    isDone: false,
                                ),
                                CourseContent(
                                    number: '04',
                                    duration: 5.35,
                                    title: "Customer Perspective",
                                    isDone: false,
                                ),
                              ],
                            ),
                          ),
                        ]),
                ],
              ),
            )));
  }
}

class CourseContent extends StatelessWidget {
  final String number;
  final double duration;
  final String title;
  final bool isDone;
  const CourseContent({
    Key key,
    this.number,
    this.duration,
    this.title,
    this.isDone = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: <Widget>[
          Text(
            number,
            style: TextStyle(
              fontSize: 28,
              color: Color(0xFF0D1333),
              fontWeight: FontWeight.bold,
            ).copyWith(
              color: Color(0xFF0D1333).withOpacity(.15),
              fontSize: 32,
            ),
          ),
          SizedBox(width: 20),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$duration mins\n",
                  style: TextStyle(
                    color: Color(0xFF0D1333).withOpacity(.5),
                    fontSize: 18,
                  ),
                ),
                TextSpan(
                  text: title,
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF0D1333),
                    // fontWeight: FontWeight.bold,
                  ).copyWith(
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: LightColor.lightpurple.withOpacity(isDone ? 1 : .5),
            ),
            child: GestureDetector(
              onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (_) => VideoPlay()));
              },
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
              ),
            ),

          )
        ],
      ),
    );
  }
}

