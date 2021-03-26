import 'package:bottom_navigation_bar/circle/circle.dart';
import 'package:bottom_navigation_bar/convex/convex.dart';
import 'package:bottom_navigation_bar/curved/curved.dart';
import 'package:bottom_navigation_bar/floating/floating.dart';
import 'package:bottom_navigation_bar/normal/normal.dart';
import 'package:bottom_navigation_bar/spincircle/spincircle.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeBottom(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NormalBottom()));
                },
                child: Text(
                  "Normal",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            Container(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Circle()));
                },
                child: Text(
                  "Circle",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            Container(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Convex()));
                },
                child: Text(
                  "Convex",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            Container(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Curved()));
                },
                child: Text(
                  "Curved",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            Container(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Floating()));
                },
                child: Text(
                  "Floating",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            Container(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Spincircle()));
                },
                child: Text(
                  "SpinCircle",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
