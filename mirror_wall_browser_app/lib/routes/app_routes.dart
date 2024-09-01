import 'package:flutter/material.dart';
import 'package:mirror_wall_browser_app/pages/history_page/history_page.dart';
import 'package:mirror_wall_browser_app/pages/home_page/home_page.dart';

class AppRoutes {
  AppRoutes._();

  static final AppRoutes instance = AppRoutes._();

  String homePage = "home_page";
  String historyPage = "history_page";

  Map<String, WidgetBuilder> routes = {
    "/": (context) => const HomePage(),
    "history_page": (context) => const HistoryPage(),
  };
}
