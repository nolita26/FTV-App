import 'package:ftvapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:ftvapp/source/Cards.dart';
import 'package:ftvapp/Sidebar/sidebar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, top: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.menu,
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => Sidebar()),
                    );
                  },
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Search for anything",
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Nunito',
                          color: Color(0xFFA0A5BD),
                        ),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 30,
                          ),
                          onPressed: (){}
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              "Find some amazing courses you may want to learn",
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 23,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Category", style: kTitleTextStyle),
                Text(
                  "See All",
                  style: kSubtitleTextSyule.copyWith(color: kBlueColor),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                  child: CourseCards(),
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
