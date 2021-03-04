import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MissionModel {
  final String id;
  final String name;
  final List<dynamic> images;
  final String presskit;
  final String webcast;
  final String article;
  final String wikipedia;
  final String staticFire;
  final int window;
  final String rocket;
  final bool success;
  final List<dynamic> failures;
  final String details;
  final List<dynamic> crew;
  final List<dynamic> ships;
  final List<dynamic> capsules;
  final List<dynamic> payloads;
  final String launchpad;
  final bool autoUpdate;
  final int flightNumber;
  final String date;
  final bool upcoming;
  final List<dynamic> cores;

  MissionModel({
    @required this.id,
    @required this.name,
    @required this.images,
    @required this.presskit,
    @required this.webcast,
    @required this.article,
    @required this.wikipedia,
    @required this.staticFire,
    @required this.window,
    @required this.rocket,
    @required this.success,
    @required this.failures,
    @required this.details,
    @required this.crew,
    @required this.ships,
    @required this.capsules,
    @required this.payloads,
    @required this.launchpad,
    @required this.autoUpdate,
    @required this.flightNumber,
    @required this.date,
    @required this.upcoming,
    @required this.cores,
  });
}

class Mission with ChangeNotifier {
  List<MissionModel> _missions = [];

  List<MissionModel> get upcomingMissions {
    return [..._missions];
  }

  List<MissionModel> get pastMissions {
    return [..._missions];
  }

  MissionModel getSingleMission(String missionId) {
    return _missions.firstWhere((element) => element.id == missionId);
  }

  Future<void> getUpcomingMissions() async {
    var url = "https://api.spacexdata.com/v4/launches/upcoming";

    _missions = [];
    final List<MissionModel> _loadedMissions = [];
    try {
      var response = await http.get(url);
      final extractedData = json.decode(response.body) as List<dynamic>;

      extractedData.map((mission) {
        _loadedMissions.add(
          MissionModel(
            id: mission['id'],
            name: mission['name'],
            images: mission['links']['flickr']['original'],
            presskit: mission['links']['presskit'],
            webcast: mission['links']['webcast'],
            article: mission['links']['article'],
            wikipedia: mission['links']['wikipedia'],
            staticFire: mission['static_fire_date_utc'],
            window: mission['window'],
            rocket: mission['rocket'],
            success: mission['success'],
            failures: mission['failures'],
            details: mission['details'],
            crew: mission['crew'],
            ships: mission['ships'],
            capsules: mission['capsules'],
            payloads: mission['payloads'],
            launchpad: mission['launchpad'],
            autoUpdate: mission['auto_update'],
            flightNumber: mission['flight_number'],
            date: mission['date_utc'],
            upcoming: mission['upcoming'],
            cores: mission['cores'],
          ),
        );
      }).toList();

      _missions = _loadedMissions.toList();
      notifyListeners();
    } catch (error) {
      throw error;
    }
  }

  Future<void> getPastMissions() async {
    var url = "https://api.spacexdata.com/v4/launches/past";
    _missions = [];
    final List<MissionModel> _loadedMissions = [];
    try {
      var response = await http.get(url);
      final extractedData = json.decode(response.body) as List<dynamic>;

      extractedData
          .map((mission) => _loadedMissions.add(
                MissionModel(
                  id: mission['id'],
                  name: mission['name'],
                  images: mission['links']['flickr']['original'],
                  presskit: mission['links']['presskit'],
                  webcast: mission['links']['webcast'],
                  article: mission['links']['article'],
                  wikipedia: mission['links']['wikipedia'],
                  staticFire: mission['static_fire_date_utc'],
                  window: mission['window'],
                  rocket: mission['rocket'],
                  success: mission['success'],
                  failures: mission['failures'],
                  details: mission['details'],
                  crew: mission['crew'],
                  ships: mission['ships'],
                  capsules: mission['capsules'],
                  payloads: mission['payloads'],
                  launchpad: mission['launchpad'],
                  autoUpdate: mission['auto_update'],
                  flightNumber: mission['flight_number'],
                  date: mission['date_utc'],
                  upcoming: mission['upcoming'],
                  cores: mission['cores'],
                ),
              ))
          .toList();

      _missions = _loadedMissions.reversed.toList();
      notifyListeners();
    } catch (error) {
      throw error;
    }
  }
}
