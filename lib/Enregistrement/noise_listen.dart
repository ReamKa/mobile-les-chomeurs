import 'dart:async';
import 'package:chomeurs/Enregistrement/enregistrements.dart';
import 'package:chomeurs/datadisplay.dart';
import 'package:flutter/material.dart';
import 'package:noise_meter/noise_meter.dart';

double? getValue;

class NoiseListen extends StatefulWidget {
  @override
  _NoiseListenState createState() => _NoiseListenState();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:ThirdRoute(),
    );
  }
}

class _NoiseListenState extends State<NoiseListen> {
  bool _isRecording = false;
  StreamSubscription<NoiseReading>? _noiseSubscription;
  late NoiseMeter _noiseMeter;
  double? maxDB;
  double? meanDB;

  @override
  void initState() {
    super.initState();
    _noiseMeter = NoiseMeter(onError);
  }

  void onData(NoiseReading noiseReading) {
    this.setState(() {
      if (!this._isRecording) this._isRecording = true;
    });
    maxDB = noiseReading.maxDecibel;
    meanDB = noiseReading.meanDecibel;
    getValue = meanDB;

  }

  void onError(Object e) {
    print(e.toString());
    _isRecording = false;
  }

  void start() async {
    try {
      _noiseSubscription = _noiseMeter.noiseStream.listen(onData);
    } catch (e) {
      print(e);
    }
  }

  void stop() async {
    try {
      _noiseSubscription!.cancel();
      _noiseSubscription = null;

      this.setState(() => this._isRecording = false);
    } catch (e) {
      print('stopRecorder error: $e');
    }
  }

  double? getMeanDB(){
    return getValue;
  }


  @override
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
