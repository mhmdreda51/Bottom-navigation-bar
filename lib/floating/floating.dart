import 'package:bottom_navigation_bar/pages/add.dart';
import 'package:bottom_navigation_bar/pages/discovery.dart';
import 'package:bottom_navigation_bar/pages/home.dart';
import 'package:bottom_navigation_bar/pages/message.dart';
import 'package:bottom_navigation_bar/pages/profile.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class Floating extends StatefulWidget {
  @override
  _FloatingState createState() => _FloatingState();
}

class _FloatingState extends State<Floating> {
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
      bottomNavigationBar: FloatingNavbar(
        onTap: (int val) => setState(() => _currentIndex = val),
        currentIndex: _currentIndex,
        items: [
          FloatingNavbarItem(icon: Icons.home, title: 'Home'),
          FloatingNavbarItem(icon: Icons.explore, title: 'Explore'),
          FloatingNavbarItem(icon: Icons.chat_bubble_outline, title: 'Chats'),
          FloatingNavbarItem(icon: Icons.settings, title: 'Settings'),
        ],
      ),
    );
  }
}
