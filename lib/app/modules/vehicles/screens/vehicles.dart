import 'package:flutter/material.dart';
import '../widgets/VehicleCard.dart';

class Vehicles extends StatelessWidget {
  static const routeName = "vehicles";

  static final myVehicles = [
    {"id": 0, "title": "Rockets"},
    {"id": 1, "title": "Dragons"},
    {"id": 2, "title": "Capsules"},
    {"id": 3, "title": "Cores"},
    {"id": 4, "title": "Payloads"},
    {"id": 5, "title": "Roadster"},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.all(14.0),
      crossAxisSpacing: 12.0,
      children: List.generate(6, (index) {
        return Center(
          child: VehicleCard(title: myVehicles[index]['title'].toString()),
        );
      }),
    );
  }
}
