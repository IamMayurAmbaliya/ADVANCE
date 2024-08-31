import 'package:animation_project/helpers/api_helpers.dart';
import 'package:animation_project/models/hero_model.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class ApiController extends ChangeNotifier {
  List<Heros> allHeros = [];

  ApiController() {
    getData();
  }

  Future<void> getData() async {
    allHeros = await ApiHelper.apiHelper.getAllHero();
    notifyListeners();
  }
}
