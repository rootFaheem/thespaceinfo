import 'package:flutter/material.dart';

class Mars extends StatelessWidget {
  static const routeName = "mars";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 24.0),
          child: Text(
            'MARS',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        Container(
          child: Text('The Red Planet'),
        ),
        Container(
          child: Text('Mars Image goes here'),
        ),
      ],
    );
  }
}
