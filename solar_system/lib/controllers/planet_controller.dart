import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:solar_system/model/planet_model.dart';

class PlanetController extends ChangeNotifier {
  List<PlanetModel> planetData = [];

  PlanetController() {
    getLocalJson();
  }

  Future<void> getLocalJson() async {
    log("METHOD CALLED");
    String json = await rootBundle.loadString("assets/json/planet.json");
    log("READY TO DECODE......");
    List jsonData = jsonDecode(json);
    log("DATA:$jsonData");
    planetData = jsonData.map((e) => PlanetModel.fromJson(e)).toList();
    notifyListeners();
  }
}
