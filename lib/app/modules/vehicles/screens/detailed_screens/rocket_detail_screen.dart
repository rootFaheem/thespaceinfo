import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/rocket.dart';

class RocketDetailScreen extends StatelessWidget {
  static const routeName = "/rocket-detail";

  @override
  Widget build(BuildContext context) {
    final String vehicleId =
        ModalRoute.of(context).settings.arguments as String;

    final rocketData = Provider.of<Rocket>(context, listen: false)
        .getSingleRocketDetails(vehicleId);
    print(rocketData);
    return Scaffold(
      appBar: AppBar(
        title: Text("rocket"),
      ),
      body: Container(
        child: Text("data goes here"),
      ),
    );
  }
}
