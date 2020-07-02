import 'package:flutter/cupertino.dart';
import 'package:ftvapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:ftvapp/source/cards.dart';
import 'package:ftvapp/source/login.dart';
import 'package:ftvapp/source/search.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  ScrollController _scrollController = new ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => Login()));
            },
          ),
        ],
      ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 20),
                height: 170,
                color: Colors.black,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 30,),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      maxRadius: 25,
                    ),
                    SizedBox(height: 10,),
                    Text('Nolita Rego', style: TextStyle(color: Colors.white),),
                    SizedBox(height: 10,),
                    Text('nolitarego.ftv@gmail.com', style: TextStyle(color: Colors.white),),
                  ],
                )
              ),
              SizedBox(height: 10),
              new ListTile(
                title: new Text("Courses"),
                trailing: Icon(Icons.collections_bookmark),
              ),
              Divider(
                height: 10,
                thickness: 0.5,
                color: Colors.black,
                indent: 15,
                endIndent: 20,
              ),
              new ListTile(
                title: new Text("Categories"),
                trailing: Icon(Icons.category),
              ),
              Divider(
                height: 10,
                thickness: 0.5,
                color: Colors.black,
                indent: 15,
                endIndent: 20,
              ),
              new ListTile(
                title: new Text("Search"),
                trailing: Icon(Icons.search),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Search(), fullscreenDialog: true));
                },
              ),
              Divider(
                height: 10,
                thickness: 0.5,
                color: Colors.black,
                indent: 15,
                endIndent: 20,
              ),
              new ListTile(
                title: new Text("Settings"),
                trailing: Icon(Icons.settings),
              ),
              Divider(
                height: 10,
                thickness: 0.5,
                color: Colors.black,
                indent: 15,
                endIndent: 20,
              ),
              SizedBox(height: 180),
              Divider(
                height: 5,
                thickness: 0.5,
                color: Colors.black,
                indent: 15,
                endIndent: 20,
              ),
              new ListTile(
                title: new Text("Exit"),
                trailing: Icon(Icons.exit_to_app),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home(), fullscreenDialog: true));
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
        child: Container(
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.only(left: 20, top: 5, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 60,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Card(
                      elevation: 0,
                      color: Colors.grey[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: ListTile(
                        title: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Search for Anything',
                            filled: true,
                            fillColor: Colors.grey[200],
                          ),
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.search),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Text(
                "Find some amazing courses you may want to learn",
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                      "Categories",
                      style: kTitleTextStyle
                  ),
                  Text(
                    "See All",
                    style: kSubtitleTextSyule.copyWith(color: kBlueColor),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
              height: 50,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
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
                              icon: Icon(Icons.child_care),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Beauty",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Row(
                          children: <Widget>[
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.shop_two),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Fashion",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 160,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Row(
                          children: <Widget>[
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.nature),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Health Care",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Top Courses on Beauty", style: kTitleTextStyle),
                ],
              ),
              SizedBox(height: 20),
              Expanded(
                child: Container(
                    child: CourseCards(),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Top Courses on Health Care", style: kTitleTextStyle),
                ],
              ),
              SizedBox(height: 20),
              Expanded(
                child: Container(
                  child: CourseCards(),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Top Courses on Fashion", style: kTitleTextStyle),
                ],
              ),
              SizedBox(height: 20),
              Expanded(
                child: Container(
                  child: CourseCards(),
                ),
              ),
            ],
          ),
        )),
      ));
    }
}
