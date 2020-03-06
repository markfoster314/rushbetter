import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rushbetter/utilities/constants.dart';
import 'package:rushbetter/screens/budget_screen.dart';
import 'package:rushbetter/screens/calendar_screen.dart';
import 'package:rushbetter/screens/rushee_screen.dart';
import 'package:rushbetter/screens/landing_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedTab = 0;
  final _pageOptions = [
    LandingScreen(),
    CalendarScreen(),
    BudgetScreen(),
    RusheeScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RushBetter"),
      ),
      body: _pageOptions[0],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (int index) {
          setState(() {
            _selectedTab = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('Calendar'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Budget'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Rushees'),
          ),
        ],
      ),
    );
  }
}