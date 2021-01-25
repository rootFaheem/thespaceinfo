import 'package:flutter/material.dart';

class RoadsterScreen extends StatelessWidget {
  static const routeName = "/roadster";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Roadster"),
      ),
      body: Column(children: <Widget>[Text("Roadster list/details ")]),
    );
  }
}
