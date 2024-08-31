import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:weather_app_using_getx/global.dart';
import 'package:weather_app_using_getx/models/weather_model.dart';
import 'package:http/http.dart' as http;

// class ApiHelper {
//   ApiHelper._();
//
//   static final ApiHelper apiHelper = ApiHelper._();
//
//   String weatherApi =
//       "https://weatherapi-com.p.rapidapi.com/current.json?q=${Globals.globals.searchCity}";
//   Map<String, String> headers = {
//     'x-rapidapi-key': '0f7c7707a1mshcfb7f4e2a5254dep105262jsn745083e8e12e',
//     'x-rapidapi-host': 'weatherapi-com.p.rapidapi.com'
//   };
//
//   Future<Weather?> fetchAllData() async {
//     http.Response response =
//         await http.get(Uri.parse(weatherApi), headers: headers);
//     if (response.statusCode == 200) {
//       Map<String, dynamic> data = jsonDecode(response.body);
//       Weather _weather = Weather.fromJson(data);
//     }
//   }
// }

// class ApiHelper {
//   ApiHelper._();
//
//   static final ApiHelper apiHelper = ApiHelper._();
//   Future<Weather?> loadData() async {
//     String weatherApi =
//         "https://weatherapi-com.p.rapidapi.com/current.json?q=${Globals.globals.searchCity}";
//     Map<String, String> headers = {
//       'x-rapidapi-key': '0f7c7707a1mshcfb7f4e2a5254dep105262jsn745083e8e12e',
//       'x-rapidapi-host': 'weatherapi-com.p.rapidapi.com'
//     };
//     isLoading(true);
//     http.Response response =
//         await http.get(Uri.parse(weatherApi), headers: headers);
//     if (response.statusCode == 200) {
//       Map<String, dynamic> data = jsonDecode(response.body);
//       Weather? weather;
//       weather = Weather.fromJson(data);
//     }
//     isLoading(false);
//     return weather;
//   }
// }

class ApiHelper {
  ApiHelper._();

  static final ApiHelper apiHelper = ApiHelper._();

  String weatherApi =
      "https://api.weatherapi.com/v1/forecast.json?key=f86c4361d8984109b63103038241906&q=${Globals.globals.searchCity}";

  getData() async {
    http.Response response = await http.get(
      Uri.parse(weatherApi),
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      Weather weather;
      weather = Weather.fromJson(data);
    }
  }
}
