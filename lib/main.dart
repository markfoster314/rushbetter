import 'package:flutter/material.dart';
import 'package:rushbetter/screens/login_screen.dart';
import 'package:rushbetter/screens/home_screen.dart';
import 'package:rushbetter/screens/signup_screen.dart';
import 'package:rushbetter/screens/rushee_screen.dart';
import 'package:rushbetter/screens/calendar_screen.dart';
import 'package:rushbetter/screens/budget_screen.dart';

void main() => runApp(RushBetter());

class RushBetter extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RushBetter',
      debugShowCheckedModeBanner: false,
      initialRoute: '/lib/screens/login_screen.dart',
      routes: <String, WidgetBuilder> {
        '/lib/screens/login_screen.dart': (context) => LoginScreen(),
        '/lib/screens/signup_screen.dart': (context) => SignupScreen(),
        '/lib/screens/home_screen.dart': (context) => HomeScreen()
        // '/lib/screens/calendar_screen.dart': (context) => CalendarScreen(),
        // '/lib/screens/rushee_screen.dart': (context) => RusheeScreen(),
        // '/lib/screens/budget_screen.dart': (context) => BudgetScreen()
      },
    );
  }
}