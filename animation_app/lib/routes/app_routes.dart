import 'package:animation_app/pages/home_page/home_page.dart';
import 'package:animation_app/pages/splash_screen_page/splash_screen_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  AppRoutes._();

  static final AppRoutes instance = AppRoutes._();

  String splashScreenPage = "splash_screen_page";
  String homePage = "home_page";

  Map<String, WidgetBuilder> routes = {
    "splash_screen_page": (context) => const SplashScreenPage(),
    "/": (context) => const HomePage(),
  };
}
