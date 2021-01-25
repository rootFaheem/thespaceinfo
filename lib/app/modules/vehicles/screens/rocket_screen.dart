import 'package:flutter/material.dart';

class RocketScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rockets"),
      ),
      body: Column(children: <Widget>[Text("Rockets list ")]),
    );
  }
}
