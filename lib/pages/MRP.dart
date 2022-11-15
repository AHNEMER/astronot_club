import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';
import 'dart:convert';

class MRP extends StatefulWidget {
  const MRP({Key? key}) : super(key: key);

  @override
  State<MRP> createState() => _MRPState();
}

class _MRPState extends State<MRP> {
  Map data = {};
  bool dataIsLoading = true;
  List<dynamic> photos = [];

  void getPhotos() async {
    var url = Uri.parse(
        'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=qtvtVT2LvbDD5yQxRCKCPQpGPVeldnKxG7czGasU');
    Response response = await get(url);
    Map data = jsonDecode(response.body);
    print(data["photos"][0]);

    setState(() {
      dataIsLoading = false;
      photos = data["photos"];
    });
  }


  @override
  void initState() {
    super.initState();
    getPhotos();
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
            children: []

          )));
    }
  }
}
