// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
          body: Center(
            child : MyStateFulWidget(),
          )
      ),
    );
  }
}

class MyStateFulWidget extends StatefulWidget{
  const MyStateFulWidget({Key? key}) : super(key: key);

  @override
  _MyStateFulWidgetState createState() => _MyStateFulWidgetState();
}

class _MyStateFulWidgetState extends State<MyStateFulWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Image.asset('Icones/coolicon5.png'),
          iconSize: 50,
          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset('Icones/coolicon6.png'),
          iconSize: 50,
          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset('Icones/coolicon.png'),
          iconSize: 50,
          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset('Icones/coolicon4.png'),
          iconSize: 50,
          onPressed: () {},
        ),
      ],
    );
  }
}
