import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class BodyRouge extends StatefulWidget {
  @override
  _BodyRougeState createState() => _BodyRougeState();
}

class _BodyRougeState extends State<BodyRouge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: Image.asset(
                "assets/Icones/icon_rouge.png",
                width: 92,
                height: 92,
                alignment: Alignment.center,
              )),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(39, 0, 39, 0),
              child: Text(
                "C\'est un message d'alerte… qui arrive bien tard ! En effet, les seuils de danger pour l\'audition et de détection de "
                    "la douleur sont séparés de 40 dB environ."
                    "Nous vous conseillons de vous en écarter afin de préserver votre santé.",
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
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
