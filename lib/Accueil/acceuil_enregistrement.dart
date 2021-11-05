
import 'package:chomeurs/Enregistrement/noise_listen.dart';
import 'package:chomeurs/Orange/page_resultat_orange.dart';
import 'package:chomeurs/Vert/page_resultat_vert.dart';
import 'package:flutter/material.dart';


class AccueilEnregistrement extends StatefulWidget {
  @override
  _AccueilEnregistrementState createState() => _AccueilEnregistrementState();
}
Color primaryColor = Color(0xFF9EA2A6);

class _AccueilEnregistrementState extends State<AccueilEnregistrement> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromRGBO(59, 72, 92, 100), 
                Color.fromRGBO(233, 232, 212, 100)])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: IconButton(
              icon:Image.asset("assets/images/reverb.png",),
              iconSize: 454,
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  PageOrange()),
                );
              },
            ),
          )),
    );
  }
}