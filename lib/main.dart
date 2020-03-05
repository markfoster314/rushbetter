import 'package:flutter/material.dart';
import 'package:rushbetter/screens/login_screen.dart';

void main() => runApp(RushBetter());

class RushBetter extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RushBetter',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}