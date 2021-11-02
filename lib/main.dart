import 'package:flutter/material.dart';
import './route3.dart';
import 'package:flutter/material.dart';
import 'package:chomeurs/Vert/page.dart';
import 'package:chomeurs/Vert/bottom.dart';

void main() => runApp(MyApp());
//TESSST

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'Welcome to Flutter',
      theme: ThemeData(
        primaryColor: Colors.white,
        // ignore: prefer_const_constructors
        scaffoldBackgroundColor: Color(0xFF9EA2A6),
      ),
      // ignore: prefer_const_constructors
      home: AnimatedBottomBar(),
    );
  }
}
