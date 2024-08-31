import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:weather_app_using_provider/globals.dart';
import 'package:weather_app_using_provider/models/weather_model.dart';

class ApiHelper {
  ApiHelper._();

  static final ApiHelper apiHelper = ApiHelper._();

  late Weather weather;

  Future<Weather> getData() async {
    Logger().i("METHOD CALLED");

    String api =
        "http://api.weatherapi.com/v1/current.json?key=910c42b2be624627a6052854240607&q=${Globals.globals.searchCity}&aqi=no";

    http.Response response = await http.get(
      Uri.parse(api),
    );
    Logger().i("Status Code : ${response.statusCode}");

    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);
      Logger().i(data);
      weather = Weather.fromJson(data as Map<String, dynamic>);
      return weather;
    }
    return weather;
  }
}
