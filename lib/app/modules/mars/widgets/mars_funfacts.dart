import 'package:flutter/material.dart';

class MarsFunFact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text(
              "Landmass",
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
                  "Mars and Earth have approximately the same landmass. Even though Mars has only 15% of the Earth’s volume and just over 10% of the Earth’s mass, around two thirds of the Earth’s surface is covered in water. Martian surface gravity is only 37% of the Earth\’s",
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
            ],
          ),
          Container(
            child: Text(
              "Tallest Mountain",
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
                  "Mars is home to the tallest mountain in the solar system. Olympus Mons, a shield volcano, is 21km high and 600km in diameter. Despite having formed over billions of years, evidence from volcanic lava flows is so recent many scientists believe it could still be active.",
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
