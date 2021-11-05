import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  ContainerScreen({Key? key}) : super(key: key);

  List<int> valueHistories = <int>[12, 13, 15, 123, 147];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // ignore: avoid_unnecessary_containers
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: <Widget>[
          // ignore: prefer_const_constructors
          Positioned(
            top: 25,
            left: 25,
            child: const Text(
              "Références",
              textAlign: TextAlign.left,
              // ignore: prefer_const_constructors
              style: TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  fontFamily: "Inter",
                  color: Colors.black,
            ),
          ),
          ),
          Positioned(
              top: 75,
              left: 25,
              child: Image.asset("assets/Icones/image 3.png")),
          // ignore: prefer_const_constructors
          Positioned(
            top: 25,
            right: 25,
            // ignore: prefer_const_constructors
            child: Text(
              "Historique",
              textAlign: TextAlign.left,
              // ignore: prefer_const_constructors
              style: TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  fontFamily: "Inter",
                  color: Colors.black),
            ),
          ),
              Positioned(
                top: 75,
                right: 25,
                child: Text(valueHistories.toString()),
              )
        ],
      ),
    );
  }
}
