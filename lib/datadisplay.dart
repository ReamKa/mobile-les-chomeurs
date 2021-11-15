import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import './noise_listen.dart';


class ThirdRoute extends StatelessWidget {
  const ThirdRoute({Key? key}) : super(key: key);
  @override

    Widget build(BuildContext context) {
    
    return const Scaffold(
      body: PageOrg(),
      );
    

  }
}

SoundDescription (dB) {
  var comment = "comment";
  if (dB < 10) {
    comment = "hmmm, " + dB + "Décibels ? C'est à peine le bruit d'une respiration...";
  }
  else if (dB < 20) {
    comment = "ooooh, " + dB + "Décibels ? On entendrait le bruissement des feuilles...";
  }
  else if (dB < 30) {
    comment = "Ah, " + dB + "Décibels ? C'est comme se ballader dans un voisinage rurale plutôt calme !";
  }
  else if (dB < 40) {
    comment = "C'est sympa " + dB + "Décibels ? C'est à peine le bruit d'une respiration !";
  }
  else if (dB < 50) {
    comment = "Ouah " + dB + "Décibels ? C'est à peine le bruit d'une respiration !";
  }
  else if (dB < 60) {
    comment = "Ouah " + dB + "Décibels ? C'est à peine le bruit d'une respiration !";
  }
  else if (dB < 70) {
    comment = "Ouah " + dB + "Décibels ? C'est à peine le bruit d'une respiration !";
  }
  else if (dB < 80) {
    comment = "Ouah " + dB + "Décibels ? C'est à peine le bruit d'une respiration !";
  }
  else if (dB < 90) {
    comment = "Ouah " + dB + "Décibels ? C'est à peine le bruit d'une respiration !";
  }
  else if (dB < 100) {
    comment = "Ouah " + dB + "Décibels ? C'est à peine le bruit d'une respiration !";
  }
  else if (dB < 110) {
    comment = "Ouah " + dB + "Décibels ? C'est à peine le bruit d'une respiration !";
  }
  else if (dB < 120) {
    comment = "Ouah " + dB + "Décibels ? C'est à peine le bruit d'une respiration !";
  }
  else if (dB < 130) {
    comment = "Ouah " + dB + "Décibels ? C'est à peine le bruit d'une respiration !";
  }
  else if (dB < 140) {
    comment = "Ouah " + dB + "Décibels ? C'est à peine le bruit d'une respiration !";
  }
  else {
    comment = "Ouah " + dB + "Décibels ? C'est à peine le bruit d'une respiration !";
  }


  return comment;
}

class PageOrg extends StatelessWidget {
  const PageOrg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dbValue = 122.0;
    String dbValueAsString = dbValue.toStringAsFixed(1);
    var pointerColor;
    if (dbValue < 70) {
      pointerColor = Colors.green;
    }
    else if (dbValue <= 90) {
      pointerColor = Colors.orange;
    }
    else {
      pointerColor = Colors.red;
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        LogoSmall(),
        SoundDisplay(),
        Center(
        child: Container(
        child: SfRadialGauge(
        axes: <RadialAxis>[
        RadialAxis(showFirstLabel: false, maximumLabels: 0, startAngle: 180, endAngle: 0,minimum: 0, maximum: 150,
            axisLineStyle: AxisLineStyle(cornerStyle: CornerStyle.bothCurve),
        ranges: <GaugeRange>[
        GaugeRange(startValue: 0, endValue: 150, color:(Colors.blueGrey))],
        pointers: <GaugePointer>[RangePointer(
            value: dbValue, width: 0.1, sizeUnit: GaugeSizeUnit.factor, color: pointerColor,
            animationType: AnimationType.ease,
            enableAnimation: true, animationDuration: 2000,
            cornerStyle: CornerStyle.bothCurve)],

        annotations: <GaugeAnnotation>[
        GaugeAnnotation(angle: 270, positionFactor: 0.4  ,
        widget: Text(dbValueAsString, style:
        TextStyle(fontWeight: FontWeight.bold, fontSize: 60),))]
    )
    ],
    ))
        ),
        ButtonApres(),
      ],
    );
  }
}

class SoundDisplay extends StatelessWidget {
  const SoundDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String getSoundLevel = "placeholder";
    var displaySound = Text(getSoundLevel);
    return Container(child: displaySound);
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