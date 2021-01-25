import 'package:flutter/material.dart';

import 'screens/rocket_screen.dart';
import 'screens/dragon_screen.dart';
import 'screens/capsule_screen.dart';
import 'screens/core_screen.dart';

import 'widgets/VehicleCard.dart';

class Vehicles extends StatelessWidget {
  static const routeName = "/vehicles";

  static final myVehicles = [
    {"id": 0, "title": "Rockets", "routeName": RocketScreen.routeName},
    {"id": 1, "title": "Dragons", "routeName": DragonScreen.routeName},
    {"id": 2, "title": "Capsules", "routeName": CapsuleScreen.routeName},
    {"id": 3, "title": "Cores", "routeName": CoreScreen.routeName},
    {"id": 4, "title": "Payloads", "routeName": RocketScreen.routeName},
    {"id": 5, "title": "Roadster", "routeName": RocketScreen.routeName},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.all(14.0),
      crossAxisSpacing: 12.0,
      children: List.generate(6, (index) {
        return Center(
          child: VehicleCard(
              title: myVehicles[index]['title'].toString(),
              routeName: myVehicles[index]['routeName']),
        );
      }),
    );
  }
}
