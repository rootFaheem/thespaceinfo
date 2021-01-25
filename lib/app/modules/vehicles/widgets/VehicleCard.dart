import 'package:flutter/material.dart';
import 'package:thespaceinfo/app/modules/vehicles/screens/rocket_screen.dart';

class VehicleCard extends StatelessWidget {
  final String title;
  final String routeName;

  VehicleCard({this.title, this.routeName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(RocketScreen.routeName);
      },
      child: Card(
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
      ),
    );
  }
}
