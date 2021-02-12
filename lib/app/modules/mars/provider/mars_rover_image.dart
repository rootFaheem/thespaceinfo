import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MarsRoverImageModel {
  final int id;
  final int sol;
  final Map<String, dynamic> camera;
  final String imgUrl;
  final String earthDate;
  final Map<String, dynamic> rover;

  MarsRoverImageModel({
    @required this.id,
    @required this.sol,
    @required this.camera,
    @required this.imgUrl,
    @required this.earthDate,
    @required this.rover,
  });
}

class MarsRoverImage with ChangeNotifier {
  List<MarsRoverImageModel> _allImages = [];

  List<MarsRoverImageModel> get allImages {
    return [..._allImages];
  }

  // MarsRoverImageModel getSingleImage(String imgId) {
  //   return _allImages.firstWhere((element) => element.id == imgId);
  // }

  Future<void> getMarsRoverImages(DateTime selectedDateTime) async {
    var url =
        'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?earth_date=${DateTime.parse(selectedDateTime.toString()).year}-${DateTime.parse(selectedDateTime.toString()).month}-${DateTime.parse(selectedDateTime.toString()).day}&api_key=vLqdCSchasWkEmZ0lHlEsFusxDiu0HxYNPxzFhnX';

    _allImages = [];
    final List<MarsRoverImageModel> _loadedImages = [];
    try {
      var response = await http.get(url);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;

      extractedData['photos'].map((imageDetails) {
        _loadedImages.add(
          MarsRoverImageModel(
            id: imageDetails['id'],
            sol: imageDetails['sol'],
            camera: imageDetails['camera'],
            imgUrl: imageDetails['img_src'],
            earthDate: imageDetails['earth_date'],
            rover: imageDetails['rover'],
          ),
        );
      }).toList();

      _allImages = _loadedImages.toList();
      notifyListeners();
    } catch (error) {
      throw error;
    }
  }
}
