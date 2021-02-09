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
          Container(
            child: Text(
              "Purpose",
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
                  "Rovers on Mars have collected evidence of water and some of the chemical building blocks of life. Scientists think it might be possible that life existed on Mars a long time ago. If there were living things, they were probably teeny tiny little organisms—something like bacteria here on Earth.",
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
            ],
          ),
          Container(
            child: Text(
              "Mission Goals",
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
                  "The mission will send a rover very similar to Curiosity to explore the rocks, dirt, and air on Mars. Like Curiosity, the Perseverance rover is the size of a small SUV. The new rover has a different goal and different instruments. It will look directly for signs of past life on Mars.",
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
            ],
          ),
          Container(
            child: Text(
              "Landing on Mars?",
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
                  "The Perseverance rover launched from Earth on July 30, 2020 and will arrive on Mars on February 18, 2021, at around 12:30 PST . Stay tuned!",
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
            ],
          ),
          Container(
            child: Text(
              "Experiments",
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
                  "The new rover will also experiment with a natural resource that would be helpful in planning a human mission to Mars.",
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
            ],
          ),
          Container(
            child: Text(
              "Living on Mars",
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
                  "The atmosphere of Mars is made mostly of a gas called carbon dioxide. But many living things (including humans) need oxygen to breathe. If a human were to go to Mars, they would have to bring lots of oxygen. However, there isn’t much room on the spacecraft to carry liquid oxygen.",
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
            ],
          ),
          Container(
            child: Text(
              "The Masterplan",
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
                  "The rover will test a method for getting oxygen from the air in the Martian atmosphere. This will help NASA plan for the best designs to send human astronauts to explore Mars one day.",
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
