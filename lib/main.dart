import 'package:flutter/material.dart';
import 'package:ftvapp/intropages/intro_layout.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: new MyApp(),
));

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 8,
      backgroundColor: Colors.white,
      image:Image.asset('images/logo.png'),
      loaderColor: Colors.blue,
      photoSize: 150.0,
      navigateAfterSeconds:IntroLayout(),
    );
  }
}
