import 'package:chomeurs/Statistique/page_statistique.dart';
import 'package:chomeurs/Enregistrement/enregistrements.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:chomeurs/Vert/page_resultat_vert.dart';
import 'package:chomeurs/Orange/page_resultat_orange.dart';
import 'package:chomeurs/Rouge/page_rouge.dart';
import 'package:chomeurs/Parametres/parametres.dart';
import 'package:chomeurs/Profile/page_profile.dart';
import 'Accueil/acceuil_enregistrement.dart';
import 'Accueil/accueil.dart';
import 'Enregistrement/noise_listen.dart';

void main() => runApp(MyApp());
//TESSST

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'Welcome to Flutter',
      theme: ThemeData(
        primaryColor: Colors.white,
        // ignore: prefer_const_constructors
        scaffoldBackgroundColor: Color(0xFF9EA2A6),
      ),
      // ignore: prefer_const_constructors
      home: PageRouge(),
    );
  }
}
