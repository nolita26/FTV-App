import 'package:flutter/material.dart';
import '../../bloc/navigation_bloc.dart';

class MyOrdersPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: SafeArea(
            child: Container(
              color: Colors.black.withOpacity(0.9),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Image.asset(
                        "images/fashion.jpg",
                        height: 350,
                        fit: BoxFit.cover,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                          // Box decoration takes a gradient
                            gradient: LinearGradient(
                            // Where the linear gradient begins and ends
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            // Add one stop for each color. Stops should increase from 0 to 1
                              colors: [
                              // Colors are easy thanks to Flutter's Colors class.
                                Colors.black.withOpacity(0.5),
                                Colors.black.withOpacity(0.07),
                                Colors.black.withOpacity(0.05),
                              ],
                            ),
                          ),
                          child: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Container()
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: IconButton(
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                              onPressed: (){
                                Navigator.pop(context);
                          }),
                      ),
                    ],
                  ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 350,
                          decoration: BoxDecoration(
                          // Box decoration takes a gradient
                            gradient: LinearGradient(
                            // Where the linear gradient begins and ends
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            // Add one stop for each color. Stops should increase from 0 to 1
                              colors: [
                              // Colors are easy thanks to Flutter's Colors class.
                                Colors.black.withOpacity(0.5),
                                Colors.black.withOpacity(0.07),
                                Colors.black.withOpacity(0.05),
                              ],
                            ),
                          ),
                          child: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Container()
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Makeup',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  '\Rs. 399',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(2, 5),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                      'Course Overview: ',
                                      style: TextStyle(
                                          color: Colors.white,
                                      ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 24,
                                    height: 24,
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.8),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2),
                                      child: Text(
                                        '1',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 24,
                                    height: 24,
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.8),
                                        borderRadius: BorderRadius.circular(7)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2),
                                      child: Text(
                                        '2',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            padding: const EdgeInsets.all(8.0),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  'Description:\nMakeup comprise a range of products that are used to care for the face and body or to enhance or change the appearance of the face or body. The products include skin care, personal care, cosmetics and fragrance.',
                                  style: TextStyle(
                                      color: Colors.white,
                                  ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(9),
                            child: Material(
                              borderRadius: BorderRadius.circular(15.0),
                                color: Colors.white,
                                elevation: 0.0,
                                child: MaterialButton(
                                  onPressed: () {},
                                  minWidth: MediaQuery.of(context).size.width,
                                  child: Text(
                                    "Enroll now",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                    ),
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
        ),
      );
    }
  }