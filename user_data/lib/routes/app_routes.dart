import 'package:flutter/material.dart';
import 'package:user_data/pages/home_page/home_page.dart';
import 'package:user_data/pages/second_page/second_page.dart';

class AppRoutes {
  AppRoutes._();

  static final AppRoutes instance = AppRoutes._();

  String homePage = "/";
  String secondPage = "second_Page";

  Map<String, WidgetBuilder> routes = {
    "/": (context) => const HomePage(),
    "second_page": (context) => const SecondPage(),
  };
}
