import 'package:flutter/material.dart';
import 'package:ftvapp/source/card.dart';
import 'package:ftvapp/source/course.dart';


class CourseCards extends StatefulWidget {
  @override
  _CourseCardsState createState() => _CourseCardsState();
}

class _CourseCardsState extends State<CourseCards> {
  List<Course> courses = [
    Course(course: 'Beauty Care', image: 'ayurveda.jpg', price: 2500, description: 'Best holiday destination with wonderful beaches, monuments and other tourist attractions.'),
    Course(course: 'Nail Art', image: 'nail.jpg', price: 1500, description: 'Learn to do so creative art on nails by out well known nail artists'),
    Course(course: 'Skin Care', image: 'therapy.jpg', price: 2000, description: 'Learn different way of skin care and therapy and blabla '),
    Course(course: 'Be a Fashionista', image: 'model7.jpg', price: 3500, description: 'Be a fashionista by learning from our well known professionals'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: courses.length,
            itemBuilder: (_, index) {
              return CourseCard(
                course: courses[index],
                name: courses[index].course,
                price: courses[index].price,
                picture: courses[index].image,
              );
            }
        )
    );
  }
}