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
          Container(
            child: Text(
              "Largest dust storms",
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
                  "Mars has the largest dust storms in the solar system. They can last for months and cover the entire planet. The seasons are extreme because its elliptical (oval-shaped) orbital path around the Sun is more elongated than most other planets in the solar system.",
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
            ],
          ),
          Container(
            child: Text(
              "Sun size",
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
                  "On Mars the Sun appears about half the size as it does on Earth. At the closest point to the Sun, the Martian southern hemisphere leans towards the Sun, causing a short, intensely hot summer, while the northern hemisphere endures a brief, cold winter.",
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
