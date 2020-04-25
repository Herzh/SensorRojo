import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Estado();
}

class Estado extends State{
  AccelerometerEvent acelerometro; //Acelerómetro con Gravedad

  @override
  void initState(){
    super.initState();
    accelerometerEvents.listen((AccelerometerEvent event) {
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
          /* Esta si guada valores:
             Rot izq 0 -> 10 y 10 a 0
             Rot der 0 -> -9 y -9 a 0
           */
          title: Text('Sensor Rojo (a.a. c/G)'
                ' X: ${acelerometro.x.roundToDouble()}'

          ),
        ),
      ),
    );
  }
}


