import 'package:flutter/material.dart';

class PayloadScreen extends StatelessWidget {
  static const routeName = "/payloads";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payloads"),
      ),
      body: Column(children: <Widget>[Text("Payloads list goes here..")]),
    );
  }
}
