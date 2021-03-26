import 'package:circle_bottom_navigation/circle_bottom_navigation.dart';
import 'package:circle_bottom_navigation/widgets/tab_data.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navigation_bar/pages/add.dart';
import 'package:bottom_navigation_bar/pages/discovery.dart';
import 'package:bottom_navigation_bar/pages/home.dart';
import 'package:bottom_navigation_bar/pages/message.dart';
import 'package:bottom_navigation_bar/pages/profile.dart';

class Circle extends StatefulWidget {
  @override
  _CircleState createState() => _CircleState();
}

class _CircleState extends State<Circle> {
  int _currentIndex = 0;
  List<Widget> _widgetOpetion = <Widget>[
    Home(),
    Add(),
    Discovery(),
    Message(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _widgetOpetion.elementAt(_currentIndex),
        bottomNavigationBar: CircleBottomNavigation(
          initialSelection: _currentIndex,
          tabs: [
            TabData(icon: Icons.home),
            TabData(icon: Icons.history),
            TabData(icon: Icons.search),
            TabData(icon: Icons.alarm),
          ],
          barHeight: 70,
          circleSize: 65,
          inactiveIconColor: Colors.grey,
          textColor: Colors.black,
          hasElevationShadows: false,
          onTabChangedListener: (index) =>
              setState(() => _currentIndex = index),
        ));
  }
}
