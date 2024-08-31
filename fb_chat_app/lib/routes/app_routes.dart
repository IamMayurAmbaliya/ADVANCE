import 'package:fb_chat_app/pages/home_page/home_page.dart';
import 'package:fb_chat_app/pages/intro_page/intro_page.dart';
import 'package:fb_chat_app/pages/login_page/login_page.dart';
import 'package:fb_chat_app/pages/notification_page/notification_page.dart';
import 'package:fb_chat_app/pages/sign_up_page/sign_up_page.dart';
import 'package:fb_chat_app/pages/todo_page/todo_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  AppRoutes._();

  static final AppRoutes instance = AppRoutes._();

  String introPage = "intro_page";
  String loginPage = "login_page";
  String signUpPage = "signUp_page";
  String homePage = "home_page";
  String todoPage = "todo_page";
  String notificationPage = "notification_page";

  Map<String, WidgetBuilder> routes = {
    "/": (context) => const IntroPage(),
    "login_page": (context) => LoginPage(),
    "signUp_page": (context) => const SignUpPage(),
    "home_page": (context) => const HomePage(),
    "todo_page": (context) => const TodoPage(),
    "notification_page": (context) => const NotificationPage(),
  };
}
