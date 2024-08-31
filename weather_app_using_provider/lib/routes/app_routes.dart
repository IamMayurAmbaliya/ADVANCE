import 'package:flutter/material.dart';
import 'package:weather_app_using_provider/pages/home_page/home_page.dart';
import 'package:weather_app_using_provider/pages/splash_screen/splash_screen.dart';

class AppRoutes {
  AppRoutes._();

  static final AppRoutes instance = AppRoutes._();

  String splashScreen = "splash_screen";
  String homePage = "home_page";

  Map<String, WidgetBuilder> routes = {
    "splash_screen": (context) => const SplashScreen(),
    "home_page": (context) => const HomePage(),
  };
}
