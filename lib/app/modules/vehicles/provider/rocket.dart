import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class RocketModel {
  final String id;
  final String name;
  final String type;
  final bool status;
  final int stages;
  final int boosters;
  final int costPerLaunch;
  final int successRate;
  final String firstFlight;
  final String country;
  final String company;
  final String wikipedia;
  final String description;
  dynamic height;
  dynamic diameter;
  dynamic mass;
  final Map<String, dynamic> firstStage;
  final Map<String, dynamic> secondStage;
  final Map<String, dynamic> engines;
  final Map<String, dynamic> landingLegs;
  final List<dynamic> payloadWeight;
  final List<dynamic> images;

  RocketModel({
    @required this.id,
    @required this.name,
    @required this.type,
    @required this.status,
    @required this.stages,
    @required this.boosters,
    @required this.costPerLaunch,
    @required this.successRate,
    @required this.firstFlight,
    @required this.country,
    @required this.company,
    @required this.wikipedia,
    @required this.description,
    @required this.height,
    @required this.diameter,
    @required this.mass,
    @required this.firstStage,
    @required this.secondStage,
    @required this.engines,
    @required this.landingLegs,
    @required this.payloadWeight,
    @required this.images,
  });
}

class Rocket with ChangeNotifier {
  List<RocketModel> _allRockets = [];

  List<RocketModel> get allRockets {
    return [..._allRockets];
  }

  RocketModel getSingleRocketDetails(String id) =>
      _allRockets.firstWhere((item) => item.id == id);

  Future<void> getAllRockets() async {
    var url = 'https://api.spacexdata.com/v4/rockets';
    final List<RocketModel> _loadedRockets = [];

    try {
      var response = await http.get(url);

      final extractedData = json.decode(response.body) as List<dynamic>;
      extractedData
          .map(
            (rocket) => {
              _loadedRockets.add(
                RocketModel(
                  id: rocket['id'],
                  name: rocket['name'],
                  type: rocket['type'],
                  status: rocket['active'],
                  stages: rocket['stages'],
                  boosters: rocket['boosters'],
                  costPerLaunch: rocket['cost_per_launch'],
                  successRate: rocket['success_rate_pct'],
                  firstFlight: rocket['first_flight'],
                  country: rocket['country'],
                  company: rocket['company'],
                  wikipedia: rocket['wikipedia'],
                  description: rocket['description'],
                  height: rocket['height']['meters'],
                  diameter: rocket['diameter']['meters'],
                  mass: rocket['mass']['kg'],
                  firstStage: rocket['first_stage'],
                  secondStage: rocket['second_stage'],
                  engines: rocket['engines'],
                  payloadWeight: rocket['payload_weights'],
                  landingLegs: rocket['landing_legs'],
                  images: rocket['flickr_images'],
                ),
              ),
            },
          )
          .toList();

      _allRockets = _loadedRockets;
      notifyListeners();
    } catch (error) {
      throw error;
    }
  }
}
