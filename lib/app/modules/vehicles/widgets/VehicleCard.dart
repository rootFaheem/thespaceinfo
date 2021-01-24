import 'package:flutter/material.dart';

class VehicleCard extends StatelessWidget {
  final String title;

  VehicleCard({this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.none,
      shadowColor: Colors.black,
      color: Theme.of(context).backgroundColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.only(
              top: 10.0,
            ),
            leading: Image.asset(
              'assets/images/temp/dragon.png',
              color: Colors.blue,
            ),
            title: Image.asset(
              'assets/images/temp/dragon.png',
              height: 48.0,
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
