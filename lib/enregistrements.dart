import 'package:flutter/material.dart';

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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Row(
            children: [
              IconButton(
                icon: Image.asset('Icones/coolicon1.png'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
