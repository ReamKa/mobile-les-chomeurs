import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class page2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "page 2",
      home: Scaffold(
        appBar: AppBar(title: Text("Ma 2eme Page"),),
        body: Center(
          child: RaisedButton(
            child: Text("Mon Bouton"),
            color: Colors.blue,
            onPressed: (){

            },
          ),
        ),
      ),
    );
  }
}