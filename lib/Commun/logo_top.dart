import 'package:flutter/material.dart';

class LogoTop extends StatelessWidget {
  const LogoTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 150,
      width: size.width,
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Positioned(
              top: 50,
              child: Image.asset(
                "assets/images/main_top.png",
              )),
        ],
      ),
    );
  }
}
