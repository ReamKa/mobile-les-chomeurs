import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class BodyVert extends StatefulWidget {
  @override
  _BodyVertState createState() => _BodyVertState();
}

class _BodyVertState extends State<BodyVert> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: Image.asset(
            "assets/Icones/coolicon2.png",
            width: 92,
            height: 92,
            alignment: Alignment.center,
          )),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(39,0,39,0),
              child: Text(
                "La recommandation générale de l\'Environmental Protection Agency est de "
                "limiter l\'exposition professionnelle à plus de 85 dB (environ le bruit d\'une tondeuse à gazon).",
                textAlign: TextAlign.center,
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
        ],
      ),
    );
  }
}
