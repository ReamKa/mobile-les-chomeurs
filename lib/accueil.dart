import 'package:chomeurs/page2.dart';
import 'package:flutter/material.dart';
import './main.dart';

class accueil extends  StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
        // Removing the debug banner when running on simulators
        debugShowCheckedModeBanner: false,
        title: 'Decibel',
        theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFE9E8D4)),
        home: Scaffold (

          appBar: AppBar(
            title: Text('Home'),
          ),

          body: Center(
            child: Column(
              children: <Widget>[

                GestureDetector(
                    child: Container(


                      width: 183,
                      height: 180,
                      margin: const EdgeInsets.only(left:114.0,top: 276.0),
                      decoration: ShapeDecoration(
                          color: const Color(0xFFE9E8D4),
                          image: DecorationImage(
                            image: AssetImage('assets/image 1.png'),
                          ),
                          shape: CircleBorder (
                              side: BorderSide(
                                  width: 6,
                                  color: const Color(0xFFD8D8C8)
                              )
                          )
                      ),


                    ),onTap:(){
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => page2()));
                }
                )


              ],
            ),
          ),
        )
    );
  }
}