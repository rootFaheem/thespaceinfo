import 'package:flutter/material.dart';
import '../widgets/VehicleCard.dart';

class Vehicles extends StatelessWidget {
  static const routeName = "vehicles";
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      crossAxisCount: 2,
      // Generate 100 widgets that display their index in the List.
      children: List.generate(6, (index) {
        return Center(
          child: VehicleCard(title: '$index'),
        );
      }),
    );
  }
}
