import 'package:connectingwithfirebase/model/user.dart';
import 'package:connectingwithfirebase/screens/wrapper/wrapper.dart';
import 'package:connectingwithfirebase/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
          child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            primaryColor: Colors.white
        ),
      ),
    );
  }
}