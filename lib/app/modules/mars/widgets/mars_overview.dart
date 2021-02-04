import 'package:flutter/material.dart';

class MarsOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Image.asset(
              'assets/images/temp/spacex.png',
              width: 75.0,
              height: 18.0,
            ),
          ),
        ],
      ),
    );
  }
}
