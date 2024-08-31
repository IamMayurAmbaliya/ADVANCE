import 'package:animation_project/pages/hero_animation_page/hero_detail_page.dart';
import 'package:animation_project/pages/hero_animation_page/hero_list_page.dart';
import 'package:animation_project/pages/home_page/home_page.dart';
import 'package:animation_project/pages/splash_screen_page/splash_screen_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  AppRoutes._();

  static final AppRoutes instance = AppRoutes._();

  String splashScreenPage = "splash_screen_page";
  String homePage = "home_page";
  String heroListPage = "hero_list_page";
  String heroDetailPage = "hero_detail_page";

  Map<String, WidgetBuilder> routes = {
    "splash_screen_page": (context) => const SplashScreenPage(),
    "home_page": (context) => const HomePage(),
    "hero_list_page": (context) => const HeroListPage(),
    "hero_detail_page": (context) => const HeroDetailPage(),
  };
}
