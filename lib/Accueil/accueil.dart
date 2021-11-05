
import 'package:chomeurs/Accueil/acceuil_enregistrement.dart';
import 'package:chomeurs/Enregistrement/noise_listen.dart';
import 'package:flutter/material.dart';


class Accueil extends StatefulWidget {
  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(233, 232, 212, 100),
      body: Center(
        child: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NoiseListen()),
            );
          },
          iconSize: 180,
          icon: Image.asset(
            "assets/images/logo.PNG",
          ),
        ),
      ),
    );
  }
}
