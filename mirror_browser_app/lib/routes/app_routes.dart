import 'package:flutter/material.dart';
import 'package:mirror_browser_app/pages/home_page/home_page.dart';

class AppRoutes {
  AppRoutes._();

  static final AppRoutes instance = AppRoutes._();

  String homePage = "/";

  Map<String, WidgetBuilder> routes = {
    "/": (context) => const HomePage(),
  };
}
