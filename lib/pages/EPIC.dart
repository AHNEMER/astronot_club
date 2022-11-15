import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';
import 'dart:convert';


class EPIC extends StatefulWidget {
  const EPIC({ Key? key }) : super(key: key);

  @override
  State<EPIC> createState() => _EPICState();
}



class _EPICState extends State<EPIC> {
 void getPhoto() async {
    var url = Uri.parse(
        'https://api.nasa.gov/planetary/apod?api_key=qtvtVT2LvbDD5yQxRCKCPQpGPVeldnKxG7czGasU');
    Response response = await get(url);
    Map data = jsonDecode(response.body);

    setState(() {
     
    });
  }

  @override
  void initState() {
    super.initState();
    getPhoto();
  }



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