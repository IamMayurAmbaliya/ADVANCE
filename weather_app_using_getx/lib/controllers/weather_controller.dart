import 'dart:convert';

import 'package:get/get.dart';
import 'package:weather_app_using_getx/global.dart';
import 'package:weather_app_using_getx/models/weather_model.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app_using_getx/providers/api_service.dart';

class WeatherController extends GetxController {
  RxBool isLoading = false.obs;
  Weather? weather;

  WeatherController() {
    load2Data();
  }

  loadData() async {
    String weatherApi =
        "https://weatherapi-com.p.rapidapi.com/current.json?q=${Globals.globals.searchCity}";
    Map<String, String> headers = {
      'x-rapidapi-key': '0f7c7707a1mshcfb7f4e2a5254dep105262jsn745083e8e12e',
      'x-rapidapi-host': 'weatherapi-com.p.rapidapi.com'
    };
    isLoading(true);
    http.Response response = await http.get(
      Uri.parse(weatherApi),
      headers: headers,
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      weather = Weather.fromJson(data);
    }
    isLoading(false);
  }

  Future<Weather?> load2Data() async {
    String weatherApi =
        "https://yahoo-weather5.p.rapidapi.com/weather?location=sunnyvale&format=json";
    Map<String, String> headers = {
      'x-rapidapi-key': '0f7c7707a1mshcfb7f4e2a5254dep105262jsn745083e8e12e',
      'x-rapidapi-host': 'yahoo-weather5.p.rapidapi.com'
    };
    isLoading(true);
    http.Response response = await http.get(
      Uri.parse(weatherApi),
      headers: headers,
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      weather = Weather.fromJson(data);
    }
    isLoading(false);
    return weather;
  }
  // Future<void> loadWeatherData() async {
  //   weatherData.value = await ApiHelper.apiHelper.getWeather();
  //   weatherData.value.insertAll(2,await ApiHelper.apiHelper.getWeather());
  // }

  void fetchWeatherData() async {
    weather = await ApiHelper.apiHelper.getData();
  }
}
