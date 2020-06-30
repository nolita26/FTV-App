import 'package:connectingwithfirebase/screens/authenticate/register.dart';
import 'package:connectingwithfirebase/model/user.dart';
import 'package:connectingwithfirebase/screens/homepage/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    //return either home or authenticate widget
    if (user == null) {
      return Register();
    } else {
      return HomePage();
    }
  }
}