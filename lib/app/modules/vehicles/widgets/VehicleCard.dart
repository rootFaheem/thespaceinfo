import 'package:flutter/material.dart';

class VehicleCard extends StatelessWidget {
  final String title;

  VehicleCard({this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.only(
              top: 20.0,
            ),
            leading: Image.asset('assets/images/temp/vehicle.png'),
            title: Image.asset(
              'assets/images/temp/dragon.png',
              height: 62.0,
            ),
            // subtitle: ,
          ),
          ListTile(
            title: Text(
              title,
              style: TextStyle(fontSize: 20.0),
            ),
            subtitle: Text('Rockets'),
          ),
        ],
      ),
    );
  }
}
