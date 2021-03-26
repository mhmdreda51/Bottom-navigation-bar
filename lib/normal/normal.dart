import 'package:bottom_navigation_bar/pages/add.dart';
import 'package:bottom_navigation_bar/pages/discovery.dart';
import 'package:bottom_navigation_bar/pages/home.dart';
import 'package:bottom_navigation_bar/pages/message.dart';
import 'package:bottom_navigation_bar/pages/profile.dart';
import 'package:flutter/material.dart';

class NormalBottom extends StatefulWidget {
  @override
  _NormalBottomState createState() => _NormalBottomState();
}

class _NormalBottomState extends State<NormalBottom> {
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.blueGrey,
        onTap: _changeItem,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.map,
              ),
              label: "Discovery"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
              ),
              label: "Add"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.message,
              ),
              label: "Message"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.people,
              ),
              label: "Profile"),
        ],
      ),
    );
  }

  void _changeItem(int value) {
    setState(() {
      _currentIndex = value;
    });
  }
}
