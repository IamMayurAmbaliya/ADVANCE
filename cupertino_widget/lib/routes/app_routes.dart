import 'package:cupertino_widget/pages/android_page/android_page.dart';
import 'package:cupertino_widget/pages/ios_page/ios_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  AppRoutes._();

  static final AppRoutes instance = AppRoutes._();

  String androidPage = "/";
  String iosPage = "ios_page";

  Map<String, WidgetBuilder> routes = {
    "/": (context) => const AndroidPage(),
    "ios_page": (context) => const IOSPage(),
  };
}
