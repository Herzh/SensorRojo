import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Estado();
}

class Estado extends State{
  AccelerometerEvent acelerometro; //Acelerómetro con Gravedad
  //UserAccelerometerEvent acelerometro; //Acelerómetro sin Gravedad
  //GyroscopeEvent giroscopio;

  @override
  void initState(){
    super.initState();
    accelerometerEvents.listen((AccelerometerEvent event) {
    //userAccelerometerEvents.listen((UserAccelerometerEvent event) {
    //gyroscopeEvents.listen((GyroscopeEvent event) {
      setState(() {
        acelerometro = event;
        //giroscopio = event;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            /*
              'Acelerómetro'
              ' X: ${acelerometro.x.roundToDouble()}'
              ' Y: ${acelerometro.y.roundToDouble()}'
              ' Z: ${acelerometro.z.roundToDouble()}'
            */
            /*
              'Giroscopio'
              ' X: ${giroscopio.x.roundToDouble()}'
              ' Y: ${giroscopio.y.roundToDouble()}'
              ' Z: ${giroscopio.z.roundToDouble()}'
             */

              // Esta si guada valores:
              //    Rot izq 0 -> 10 y 10 a 0
              //    Rot der 0 -> -9 y -9 a 0
              'Sensor Rojo (a.a. c/G)'
                ' X: ${acelerometro.x.roundToDouble()}'


            /* Descartado: Solo mide cuando se mueve, pero con conserva el valor
              'Sensor Rojo (a.a. s/G)'
                ' X: ${acelerometro.x.roundToDouble()}'
             */

            /* Descartado: Solo mide cuando se mueve, pero con conserva el valor
              'Sensor Rojo (Giroscopio)'
                ' X: ${giroscopio.x.roundToDouble()}'
            */

          ),
        ),
      ),
    );
  }
}


