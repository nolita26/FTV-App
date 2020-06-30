import 'package:flutter/material.dart';
import 'package:connectingwithfirebase/screens/profile/profile_screen.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainCard(),
    );
  }
}
