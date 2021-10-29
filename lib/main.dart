import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './route3.dart';
import 'noise_listen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: 'Decibam',
      home: NoiseListen(),
      darkTheme: ThemeData.dark().copyWith(
        textTheme: ThemeData.dark().textTheme.apply(
          fontFamily: GoogleFonts.comfortaa().fontFamily,
        ),
        primaryTextTheme: ThemeData.dark().textTheme.apply(
          fontFamily: GoogleFonts.comfortaa().fontFamily,
        ),
        accentTextTheme: ThemeData.dark().textTheme.apply(
          fontFamily: GoogleFonts.comfortaa().fontFamily,
        ),
      ),
      theme: ThemeData(
        fontFamily: GoogleFonts.comfortaa().fontFamily,
      ),
    );
  }
}