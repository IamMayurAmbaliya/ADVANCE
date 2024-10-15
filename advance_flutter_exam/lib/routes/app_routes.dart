import 'package:advance_flutter_exam/pages/home_page/home_page.dart';
import 'package:advance_flutter_exam/pages/splash_screen_page/splash_screen_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  AppRoutes._();

  static final AppRoutes instance = AppRoutes._();

  String splashScreenPage = "/";
  String homePage = "/";

  Map<String, WidgetBuilder> routes = {
    "splash_screen_page": (context) => const SplashScreenPage(),
    "/": (context) => const HomePage(),
  };
}
