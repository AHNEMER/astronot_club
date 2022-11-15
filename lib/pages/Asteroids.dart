import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';
import 'dart:convert';

class astroids extends StatefulWidget {
  const astroids({Key? key}) : super(key: key);

  @override
  State<astroids> createState() => _astroidsState();
}

class _astroidsState extends State<astroids> {
  
  void getData() async {
    var url = Uri.parse(
        'https://api.nasa.gov/neo/rest/v1/neo/3542519?api_key=qtvtVT2LvbDD5yQxRCKCPQpGPVeldnKxG7czGasU');
    Response response = await get(url);
    Map data = jsonDecode(response.body);
    print(data);

    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getData();
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
      body: Center(
              child: SpinKitSpinningLines(
            color: Colors.black,
            size: 200.0,
          ))
    );
  }
}


