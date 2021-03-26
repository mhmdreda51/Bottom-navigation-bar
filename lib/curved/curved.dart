import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navigation_bar/pages/add.dart';
import 'package:bottom_navigation_bar/pages/discovery.dart';
import 'package:bottom_navigation_bar/pages/home.dart';
import 'package:bottom_navigation_bar/pages/message.dart';
import 'package:bottom_navigation_bar/pages/profile.dart';

class Curved extends StatefulWidget {
  @override
  _CurvedState createState() => _CurvedState();
}

class _CurvedState extends State<Curved> {
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
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        index: _currentIndex,
        items: <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
