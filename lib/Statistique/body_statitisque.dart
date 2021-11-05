import 'package:chomeurs/Statistique/container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class BodyStatitisque extends StatefulWidget {
  @override
  _BodyStatitisqueState createState() => _BodyStatitisqueState();
}
Color primaryColor = Color(0xFF9EA2A6);

class _BodyStatitisqueState extends State<BodyStatitisque> {
  List<int> valueHistories = <int>[12, 13, 15, 123, 147];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // ignore: prefer_const_constructors
          Positioned(
            left: 0,
            child: const Text(
              "STATISTIQUES",
              textAlign: TextAlign.center,
              // ignore: prefer_const_constructors
              style: TextStyle(
                  fontSize: 40,
                  fontStyle: FontStyle.italic,
                  fontFamily: "Inter",
                  color: Color.fromRGBO(59, 66, 92, 100)),
            ),
          ),
          Expanded(
            child: ContainerScreen(),
          ),
        ],
      ),
      bottomNavigationBar: Image.asset(
        "assets/images/rectangle.png",
        alignment: Alignment.bottomCenter,
        height: 100,
      ),
    );
  }
}
