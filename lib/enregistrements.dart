import 'package:flutter/material.dart';
import './Commun/logo_top.dart';
import './Commun/nav.dart';

void main() => runApp(const Enregistrements());

class Enregistrements extends StatelessWidget {
  const Enregistrements({Key? key}) : super(key: key);

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
        child: MyStateFulWidget(),
      )),
    );
  }
}

class MyStateFulWidget extends StatefulWidget {
  const MyStateFulWidget({Key? key}) : super(key: key);

  @override
  _MyStateFulWidgetState createState() => _MyStateFulWidgetState();
}

class _MyStateFulWidgetState extends State<MyStateFulWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LogoTop(),
        Text("ENREGISTREMENTS"),
        Container(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Image.asset('assets/Icones/coolicon1.png'),
                    onPressed: () {},
                  ),
                  const Text("rec08.mp3"),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    icon: Image.asset('assets/Icones/coolicon1.png'),
                    onPressed: () {},
                  ),
                  const Text("rec07.mp3"),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    icon: Image.asset('assets/Icones/coolicon1.png'),
                    onPressed: () {},
                  ),
                  const Text("rec06.mp3"),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    icon: Image.asset('assets/Icones/coolicon1.png'),
                    onPressed: () {},
                  ),
                  const Text("rec05.mp3"),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    icon: Image.asset('assets/Icones/coolicon1.png'),
                    onPressed: () {},
                  ),
                  const Text("rec04.mp3"),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    icon: Image.asset('assets/Icones/coolicon1.png'),
                    onPressed: () {},
                  ),
                  const Text("rec03.mp3"),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    icon: Image.asset('assets/Icones/coolicon1.png'),
                    onPressed: () {},
                  ),
                  const Text("rec02.mp3"),
                ],
              ),
              Row(
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
        ),
      ],
    );
  }
}
