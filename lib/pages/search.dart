import 'package:flutter/material.dart';
import 'package:ftvapp/theme/color/light_color.dart';

class Search extends StatelessWidget {
  Search({Key key}) : super(key: key);

  double width;

  Widget _header(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      child: Container(
        height: 120,
        width: width,
        decoration: BoxDecoration(
          color: LightColor.seeBlue,
        ),
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
                top: 30,
                right: -100,
                child: _circularContainer(300, LightColor.lightseeBlue)),
            Positioned(
                top: -100,
                left: -45,
                child: _circularContainer(width * .5, LightColor.darkseeBlue)),
            Positioned(
                top: -180,
                right: -30,
                child: _circularContainer(width * .7, Colors.transparent,
                    borderColor: Colors.white38)),
            Positioned(
              top: 40,
              left: 0,
              child:
              Container(
                width: width,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 2, 20, 4),
                      decoration: BoxDecoration(),
                      child: TextFormField(
                        cursorColor: Colors.white54,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.search,
                            color: Colors.white54,
                          ),
                          border: InputBorder.none,
                          hintText: "Example Hair Courses etc",
                          hintStyle: TextStyle(
                            color: Colors.white54,
                            fontSize: 28,
                          ),
                        ),
                      ),
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


  Widget _categoryRow(
      String title,
      Color primary,
      Color textColor,
      ) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                color: LightColor.titleTextColor, fontSize: 26, fontWeight: FontWeight.bold),
          ),
//          _chip("See all", primary)
        ],
      ),
    );
  }

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
                  )),
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
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
            child: Container(
              child: Column(
                children: <Widget>[
                  _header(context),
                  SizedBox(height: 20),
                  _categoryRow("Categories", LightColor.purple, LightColor.darkpurple),
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
                        ), //Ha
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
