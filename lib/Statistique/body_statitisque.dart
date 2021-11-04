import 'package:chomeurs/Statistique/container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class BodyStatitisque extends StatefulWidget {
  @override
  _BodyStatitisqueState createState() => _BodyStatitisqueState();
}

class _BodyStatitisqueState extends State<BodyStatitisque> {

  List<int> valueHistories = <int>[12, 13, 15, 123, 147];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // ignore: prefer_const_constructors
          Positioned(
            left: 0,
            child: const Text(
              "STATISTIQUE",
              textAlign: TextAlign.center,
              // ignore: prefer_const_constructors
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  fontStyle: FontStyle.italic,
                  fontFamily: "Inter",
                  color: Color(-12893604)),
            ),
          ),
          Expanded(child: ContainerScreen(),)
        ],
      ),
    );
  }
}
