import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import './main.dart';

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PageOrg(),
      );

  }
}

class PageOrg extends StatelessWidget {
  const PageOrg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        LogoSmall(),
        Text('Deliver features fasternnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn'),
        Text('Craft beautiful UIs'),
        ButtonApres(),
      ],
    );
  }
}


class LogoSmall extends StatelessWidget {
  const LogoSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var assetImage = const AssetImage('assets/images/image2.png');
    var image = Image(image: assetImage, width: 110, height: 69);
    return Container(child: image);
  }
}

class ButtonApres extends StatelessWidget {
  const ButtonApres({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(width: 110, height: 56),
          ElevatedButton(
            style: style,
            onPressed: () {},
            child: const Text('Et après ?'),
          ),
        ],
      ),
    );
  }
}