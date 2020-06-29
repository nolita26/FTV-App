import 'package:connectingwithfirebase/sidebar/sidebar_layout.dart';
import 'package:flutter/material.dart';
import 'package:connectingwithfirebase/registration_screen.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegistrationScreen(),
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primaryColor: Colors.white
      ),
    );
  }
}