import 'package:astronot_club/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:astronot_club/pages/APOD.dart';
import 'package:astronot_club/pages/Asteroids.dart';
import 'package:astronot_club/pages/inSight.dart';
import 'package:astronot_club/pages/EPIC.dart';
import 'package:astronot_club/pages/MRP.dart';

void main() {
  runApp(MaterialApp(initialRoute: "/home", routes: {
    '/home': (context) => home(),
    '/APOD': (context) => APOD(),
    '/Asteroids': (context) => astroids(),
    '/EPIC': (context) => EPIC(),
    '/InSight': (context) => inSight(),
    '/MRP': (context) => MRP(),
  }));
}
