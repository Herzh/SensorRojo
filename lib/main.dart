import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Estado();
}

class Estado extends State{
  AccelerometerEvent acelerometro;

  @override
  void initState(){
    super.initState();
    accelerometerEvents.listen((AccelerometerEvent event){
      setState(() {
        acelerometro = event;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Acelerómetro'
            ' X: ${acelerometro.x.roundToDouble()}'
            ' Y: ${acelerometro.y.roundToDouble()}'
            ' Z: ${acelerometro.z.roundToDouble()}'
          ),
        ),
      ),
    );
  }
}


