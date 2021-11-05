import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class BodyEnregistrement extends StatefulWidget {
  @override
  _BodyEnregistrementState createState() => _BodyEnregistrementState();
}

class _BodyEnregistrementState extends State<BodyEnregistrement> {
  List<int> valueHistories = <int>[12, 13, 15, 123, 147];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width,
        child: Stack (
          alignment: Alignment.center,
          children: <Widget>[
            const SizedBox(height: 40),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Image.asset('assets/Icones/coolicon1.png'),
                      onPressed: () {},
                    ),
                    const Text("rec08.mp3"),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Image.asset('assets/Icones/coolicon1.png'),
                      onPressed: () {},
                    ),
                    const Text("rec07.mp3"),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Image.asset('assets/Icones/coolicon1.png'),
                      onPressed: () {},
                    ),
                    const Text("rec06.mp3"),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Image.asset('assets/Icones/coolicon1.png'),
                      onPressed: () {},
                    ),
                    const Text("rec05.mp3"),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Image.asset('assets/Icones/coolicon1.png'),
                      onPressed: () {},
                    ),
                    const Text("rec04.mp3"),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Image.asset('assets/Icones/coolicon1.png'),
                      onPressed: () {},
                    ),
                    const Text("rec03.mp3"),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Image.asset('assets/Icones/coolicon1.png'),
                      onPressed: () {},
                    ),
                    const Text("rec02.mp3"),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Image.asset('assets/Icones/coolicon1.png'),
                      onPressed: () {},
                    ),
                    const Text("rec01.mp3"),
                  ],
                ),
              ],
            ),
          ],
        ),
    );
  }
}
