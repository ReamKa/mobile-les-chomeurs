import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class BodyOrange extends StatefulWidget {
  @override
  _BodyOrangeState createState() => _BodyOrangeState();
}
Color primaryColor = Color(0xFF9EA2A6);

class _BodyOrangeState extends State<BodyOrange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: Image.asset(
            "assets/Icones/icon_orange.png",
            width: 92,
            height: 92,
            alignment: Alignment.center,
          )),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(39, 0, 39, 0),
              child: Text(
                "Lorsque votre ouïe est soumise à un bruit intense, que ce soit "
                "sous la forme d\'une brève explosion sonore ou sur une longue période, cela peut endommager "
                "les structures délicates de votre oreille interne et entraîner une perte auditive permanente.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: "Inter",
                  color: Color.fromRGBO(59, 66, 92, 100),
                  fontStyle: FontStyle.normal,
                  height: 1.5,
                ),
              ),
            ),
          ),
          Expanded(
            child: Image.asset(
              "assets/images/rectangle.png",
              alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
    );
  }
}
