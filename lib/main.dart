import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';
import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => Estado();

}

class Estado extends State<MyApp> {
  AccelerometerEvent acelerometro; //Acelerómetro con Gravedad

  // valores por defecto.
  double _width = 150;
  double _height = 150;
  Color _color = Colors.red;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

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
        body: Center(
          child: AnimatedContainer(
            // Usa setState para reconstruir el widget con nuevos valores.
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: _borderRadius,
            ),
            // Define la duración de la animación.
            duration: Duration(seconds: 1),
            // Proporciona una curva opcional para hacer que la animación se sienta más suave.
            curve: Curves.fastOutSlowIn,
          ),
        ),
      ),
    );
  }
}

