import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

@override
void initState() {}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("astronots club"),
      ),
      body: Center(
        child: Column(children: <Widget>[
          Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/NASA_logo.svg/2449px-NASA_logo.svg.png",
            height: 200,
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/APOD');
            },
            title: Text("Astronomy Picture of the Day"),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/Asteroids');
            },
            title: Text("Near Earth Object"),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/EPIC');
            },
            title: Text("Earth Polychromatic Imaging Camera (EPIC)"),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/InSight');
            },
            title: Text("Mars Weather"),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/MRP');
            },
            title: Text("Mars Rover Photos"),
          ),
        ]),
      ),
    );
  }
}
