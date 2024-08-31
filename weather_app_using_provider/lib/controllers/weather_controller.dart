import 'package:flutter/material.dart';
import 'package:weather_app_using_provider/helpers/api_helper.dart';
import 'package:weather_app_using_provider/models/weather_model.dart';

class WeatherController extends ChangeNotifier {
  Weather? weather;

  WeatherController() {
    fetchData();
  }

  Future<void> fetchData() async {
    weather = await ApiHelper.apiHelper.getData();
    notifyListeners();
  }
}
