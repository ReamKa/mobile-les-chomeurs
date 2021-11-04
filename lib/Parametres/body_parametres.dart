import 'package:chomeurs/Profile/page_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class BodyParametres extends StatefulWidget {
  @override
  _BodyParametres createState() => _BodyParametres();
}

class _BodyParametres extends State<BodyParametres> {
  Color primaryColor = Color(0xFF9EA2A6);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: primaryColor,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("PARAMETRES"),
          centerTitle: true,
          titleTextStyle: const TextStyle(
            fontFamily: "Inter",
            fontStyle: FontStyle.italic,
            fontSize: 40,
            color: Color.fromRGBO(59, 66, 92, 100)
          ),
          backgroundColor: primaryColor,
          elevation: 0,
          bottomOpacity: 0,
        ),
        backgroundColor: primaryColor,
        body: GridView.count(
          crossAxisCount: 2,
          children: [
            IconButton(
              iconSize: 50,
              icon: Image.asset('Icones/coolicon5.png'),
              tooltip: 'Profil',
              padding: const EdgeInsets.all(10.0),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
            ),
            IconButton(
              icon: Image.asset('Icones/coolicon6.png'),
              padding: const EdgeInsets.all(10.0),
              onPressed: () {
              },
              tooltip: 'Contactez-nous!',
            ),

            //const Text("test2"),
            IconButton(
              icon: Image.asset('Icones/coolicon.png'),
              iconSize: 50,
              onPressed: () {},
              tooltip: 'Suppression des données',
            ),

            //const Text("test3"),
            IconButton(
              icon: Image.asset('Icones/coolicon4.png'),
              iconSize: 50,
              onPressed: () {},
              tooltip: 'Partagez (:',
            ),

            //const Text("test4"),
          ],
        ),
        bottomNavigationBar: Image.asset(
          "assets/images/rectangle.png",
          alignment: Alignment.bottomCenter,
          height: 100,
        ),),
    );
  }
}
