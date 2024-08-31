import 'package:adv_flutter_exam/pages/detail_page/detail_page.dart';
import 'package:adv_flutter_exam/pages/home_page/home_page.dart';
import 'package:adv_flutter_exam/pages/login_page/login_page.dart';
import 'package:adv_flutter_exam/pages/signup_page/signup_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  AppRoutes._();

  static final AppRoutes instance = AppRoutes._();

  String signUpPage = "signup_page";
  String loginPage = "login_page";
  String homePage = "home_page";
  String detailPage = "detail_page";

  Map<String, WidgetBuilder> routes = {
    "signup_page": (context) => const SignUpPage(),
    "login_page": (context) => const LoginPage(),
    "/": (context) => const HomePage(),
    "detail_page": (context) => const DetailPage(),
  };
}
