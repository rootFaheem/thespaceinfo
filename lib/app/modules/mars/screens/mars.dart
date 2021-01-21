import 'package:flutter/material.dart';
import '../widgets/mars_details.dart';

class Mars extends StatefulWidget {
  static const routeName = "mars";

  @override
  _MarsState createState() => _MarsState();
}

class _MarsState extends State<Mars> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 287.0,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/mars/mars_background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 24.0, bottom: 8.0),
                child: Text(
                  'MARS',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                child: Text('The Red Planet'),
              ),
              Container(
                child: Image.asset('assets/images/mars/mars.png'),
              ),
            ],
          ),
        ),
        MarsDetails(),
      ],
    );
  }
}
