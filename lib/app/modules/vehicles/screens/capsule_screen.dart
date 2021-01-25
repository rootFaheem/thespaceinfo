import 'package:flutter/material.dart';

class CapsuleScreen extends StatelessWidget {
  static const routeName = "/capsules";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Capsule"),
      ),
      body: Column(children: <Widget>[Text("Capsule list ")]),
    );
  }
}
