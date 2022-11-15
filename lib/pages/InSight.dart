import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';
import 'dart:convert';


class inSight extends StatefulWidget {
  const inSight({ Key? key }) : super(key: key);

  @override
  State<inSight> createState() => _inSightState();
}



class _inSightState extends State<inSight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(''),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}