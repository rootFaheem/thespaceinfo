import 'package:flutter/material.dart';

class VehicleCard extends StatelessWidget {
  String title;

  VehicleCard({this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.album),
            title: Text(title),
            subtitle: Text('Music by '),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text('BUY TICKETS'),
                onPressed: () {/* ... */},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
