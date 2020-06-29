import 'package:connectingwithfirebase/sidebar/settings.dart';
import 'package:flutter/material.dart';
import 'navigation_bloc.dart';

class MyAccountsPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Settings(),
    );
  }
}
