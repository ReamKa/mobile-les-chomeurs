// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(const Parametre());

class Parametre extends StatelessWidget {
  const Parametre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Scaffold(
          body: GridView.count(
            crossAxisCount: 2,
            children :  [

              IconButton(
                icon: Image.asset('Icones/coolicon5.png'),
                padding: const EdgeInsets.all(10.0),
                iconSize: 50,
                onPressed: () {},
              ),

              //const Text("test"),
              IconButton(
                icon: Image.asset('Icones/coolicon6.png'),
                padding: const EdgeInsets.all(10.0),
                iconSize: 50,
                onPressed: () {},
              ),

              //const Text("test2"),
              IconButton(
                icon: Image.asset('Icones/coolicon.png'),
                iconSize: 50,
                onPressed: () {},
              ),

              //const Text("test3"),
              IconButton(
                icon: Image.asset('Icones/coolicon4.png'),
                iconSize: 50,
                onPressed: () {},
              ),

              //const Text("test4"),
            ],
          )
      ),
    );
  }
}