import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';
import 'dart:convert';

class APOD extends StatefulWidget {
  const APOD({Key? key}) : super(key: key);

  @override
  State<APOD> createState() => _APODState();
}

class _APODState extends State<APOD> {
  Map data = {};
  bool dataIsLoading = true;
  String photoUrl = "";
  String photoExplanation = "";

  void getPhoto() async {
    var url = Uri.parse(
        'https://api.nasa.gov/planetary/apod?api_key=qtvtVT2LvbDD5yQxRCKCPQpGPVeldnKxG7czGasU');
    Response response = await get(url);
    Map data = jsonDecode(response.body);

    setState(() {
      dataIsLoading = false;
      photoUrl = data["url"];
      photoExplanation = data["explanation"];
    });
  }

  @override
  void initState() {
    super.initState();
    getPhoto();
  }

  @override
  Widget build(BuildContext context) {
    if (dataIsLoading) {
      return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: Text('Astronomy Picture of the Day'),
            centerTitle: true,
            elevation: 0,
          ),
          body: Center(
              child: SpinKitSpinningLines(
            color: Colors.black,
            size: 200.0,
          )));
    } else {
      print(data);

      return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: Text('Astronomy Picture of the Day'),
            centerTitle: true,
            elevation: 0,
          ),
          body: SingleChildScrollView(
              child: Column(
            children: [Image.network(photoUrl), Text(photoExplanation)],
          )));
    }
  }
}
