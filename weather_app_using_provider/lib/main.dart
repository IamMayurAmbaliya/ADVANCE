import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_using_provider/app.dart';
import 'package:weather_app_using_provider/controllers/weather_controller.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => WeatherController(),
      child: const MyApp(),
    ),
  );
}
