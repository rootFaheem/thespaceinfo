import 'package:flutter/material.dart';

class MarsOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[Container(child: Text("About Mars"))],
      ),
    );
  }
}
