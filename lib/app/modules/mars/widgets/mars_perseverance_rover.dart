import 'package:flutter/material.dart';

class MarsPerseveranceRover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
          Container(
            child: Text(
              "What is Perseverance?",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 16.0, bottom: 16.0, right: 18.0),
                color: Color(0xffC4C4C4),
                child: SizedBox(height: 74.0, width: 4.0),
              ),
              Container(
                width: 310.0,
                margin: EdgeInsets.only(right: 10.0),
                child: Text(
                  "Perseverance is a rover that is on its way to Mars. It will study a a region of Mars called Jezero Crater. This rover will answer lots of questions about the Red Planet and search for signs of past microbial life.",
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
            ],
          ),
        ]));
  }
}
