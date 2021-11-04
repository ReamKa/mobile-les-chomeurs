import 'package:flutter/material.dart';
import 'package:chomeurs/Statistique/components/container.dart';

import 'background.dart';
import 'package:chomeurs/Commun/logo_top.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              const LogoTop(),
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

              Positioned(
                left: 0,
                bottom: 0,
                child: ContainerScreen(),
              ),
            ]),
      ),
    );
  }
}
