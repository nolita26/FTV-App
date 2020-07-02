import 'package:ftvapp/source/home.dart';
import 'package:ftvapp/intropages/intro_layout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ftvapp/model/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    //return either home or authenticate widget
    if (user == null) {
      return IntroLayout();
    } else {
      return Home();
    }
  }
}
