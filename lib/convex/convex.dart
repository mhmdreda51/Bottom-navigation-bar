import 'package:bottom_navigation_bar/pages/add.dart';
import 'package:bottom_navigation_bar/pages/discovery.dart';
import 'package:bottom_navigation_bar/pages/home.dart';
import 'package:bottom_navigation_bar/pages/message.dart';
import 'package:bottom_navigation_bar/pages/profile.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class Convex extends StatefulWidget {
  @override
  _ConvexState createState() => _ConvexState();
}

class _ConvexState extends State<Convex> {
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
      // bottomNavigationBar: ConvexAppBar.badge(
      //   {0: '99+', 1: Icons.assistant_photo, 2: Colors.redAccent},
      //   items: [
      //     TabItem(icon: Icons.home, title: 'Home'),
      //     TabItem(icon: Icons.map, title: 'Discovery'),
      //     TabItem(icon: Icons.add, title: 'Add'),
      //   ],
      //   onTap: (int i) => print('click index=$i'),
      // ),

/////////////////////////////////////////////////////////////////////////////
      ///
      // bottomNavigationBar: ConvexButton.fab(

      // ),
      bottomNavigationBar: ConvexAppBar.badge(
        {3: '99+', 1: Icons.assistant_photo, 0: Colors.redAccent},
        badgeMargin: EdgeInsets.only(bottom: 30, right: 40),
        height: 60,
        elevation: 0,
        initialActiveIndex: _currentIndex,
        onTap: _changeItem,
        backgroundColor: Colors.teal,
        activeColor: Colors.white,
        items: [
          TabItem(
              icon: Icon(
                Icons.home,
              ),
              title: "Home"),
          TabItem(
              icon: Icon(
                Icons.map,
              ),
              title: "Discovery"),
          TabItem(
              icon: Icon(
                Icons.add,
              ),
              title: "Add"),
          TabItem(
              icon: Icon(
                Icons.message,
              ),
              title: "Message"),
          TabItem(
              icon: Icon(
                Icons.people,
              ),
              title: "Profile"),
        ],
      ),
    );
  }

  void _changeItem(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
