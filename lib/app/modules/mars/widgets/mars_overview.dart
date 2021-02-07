import 'package:flutter/material.dart';

class MarsOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text(
              "About Mars",
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
                  "Mars is a cold desert world. It is half the size of Earth. Mars is sometimes called the Red Planet. It\'s red because of rusty iron in the ground.",
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
            ],
          ),
          Container(
            child: Text(
              "Quick History",
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
                  "Mars has been known since ancient times because it can be seen without advanced telescopes. Several missions have visited Mars. And Mars is the only planet we have sent rovers to.",
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
            ],
          ),
          Container(
            child: Text(
              "Earth & Mars",
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
                  "Like Earth, Mars has seasons, polar ice caps, volcanoes, canyons, and weather. It has a very thin atmosphere made of carbon dioxide, nitrogen, and argon.",
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
            ],
          ),
          Container(
            child: Text(
              "Water & Mars",
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
                  "There are signs of ancient floods on Mars, but now water mostly exists in icy dirt and thin clouds. On some Martian hillsides, there is evidence of liquid salty water in the ground.",
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
            ],
          ),
          Container(
            child: Text(
              "Future Plan",
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
                  "Scientists want to know if Mars may have had living things in the past. They also want to know if Mars could support life now or in the future.",
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
