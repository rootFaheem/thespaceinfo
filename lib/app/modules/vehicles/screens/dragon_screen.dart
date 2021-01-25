import 'package:flutter/material.dart';

class DragonScreen extends StatelessWidget {
  static const routeName = "/dragons";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dragons"),
      ),
      body: Column(children: <Widget>[Text("Dragons list ")]),
    );
  }
}
