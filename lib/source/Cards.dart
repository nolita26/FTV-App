import 'package:flutter/material.dart';
import 'package:ftvapp/source/card.dart';

class Course{
  String course;
  String image;
  int price;
  Course({this.course, this.image, this.price});
}

class CourseCards extends StatefulWidget {
  @override
  _CourseCardsState createState() => _CourseCardsState();
}

class _CourseCardsState extends State<CourseCards> {
  List<Course> courses = [
    Course(course: 'Beauty Care', image: 'assets/images/ayurveda.jpg', price: 2500),
    Course(course: 'Nail Art', image: 'assets/images/nail.jpg', price: 1500),
    Course(course: 'Health Care', image: 'assets/images/therapy.jpg', price: 2000),
    Course(course: 'Be a Fashionista', image: 'assets/images/model7.jpg', price: 3500),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: courses.length,
            itemBuilder: (_, index) {
              return CourseCard(
//                course: courses[index],
                name: courses[index].course,
                price: courses[index].price,
                picture: courses[index].image,
              );
            }
        )
    );
  }
}