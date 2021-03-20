import 'package:flutter/material.dart';

class CoreScreen extends StatelessWidget {
  static const routeName = "/cores";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cores"),
      ),
      body: Column(children: <Widget>[Text("Cores list")]),
    );
  }
}
