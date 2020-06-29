import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'navigation_bloc.dart';

class SearchPage extends StatelessWidget with NavigationStates {
  categoryButton({image, title}) {
    return FlatButton(
      onPressed: () {},
      padding: EdgeInsets.only(top: 20),
      child: Container(
        height: 120,
        width: 120,
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
            ),
        ),
        child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.0),
                ],
                ),
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                ),
              ),
            ),
        ),
      ),
      //onPressed: ()=> _loadCategoryScreen(context, "$category"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 100),
                child: Center(
                  child: Text(
                    'Search',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 32,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 2, 20, 4),
                  decoration: BoxDecoration(),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    style: TextStyle(
                        fontSize: 20,
                    ),
                    decoration: InputDecoration(
                        icon: Icon(
                            Icons.search,
                            color: Colors.black,
                        ),
                        border: InputBorder.none,
                        hintText: "Example Hair Courses etc",
                        hintStyle: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 18,
                        ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 5),
                child: Center(
                    child: Text(
                      'Categories',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                      ),
                    ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, top: 30),
                // Center is a layout widget. It takes a single child and positions it
                // in the middle of the parent.
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        categoryButton(
                            image: 'images/artistry.jpg',
                            title: 'Makeup',
                        ), //Makeup
                        categoryButton(
                            image: 'images/Hair1.jpg',
                            title: 'Hair',
                        ), //Skin care
                      ],
                    ), //Makeup, Skin Care
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        categoryButton(
                            image: 'images/nail.jpg',
                            title: 'Nail',
                        ), //Nutrition/ Dietitian
                        categoryButton(
                            image: 'images/nutrition.jpg',
                            title: 'Nutritionist',
                        ), //Nail art
                      ],
                    ), //Nutrition/ Dietitian,Nail art
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        categoryButton(
                            image: 'images/ayurveda.jpg',
                            title: 'Ayurveda',
                        ), // Hair
                        categoryButton(
                            image: 'images/therapy.jpg',
                            title: 'Therapy'
                        ), // Spa
                      ],
                    ), //Hair courses,Spa therapist
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}