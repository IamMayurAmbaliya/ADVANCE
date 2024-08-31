import 'package:firebase_chat_app/pages/home_page/home_page.dart';
import 'package:firebase_chat_app/pages/intro_page/intro_page.dart';
import 'package:firebase_chat_app/pages/login_page/login_page.dart';
import 'package:firebase_chat_app/pages/signup_page/signup_page.dart';
import 'package:firebase_chat_app/pages/todo_page/todo_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  AppRoutes._();

  static final AppRoutes instance = AppRoutes._();

  String introPage = "/";
  String loginPage = "login_page";
  String signUpPage = "signUp_page";
  String homePage = "home_page";
  String todoPage = "todo_page";

  Map<String, WidgetBuilder> routes = {
    "/": (context) => const IntroPage(),
    "login_page": (context) => const LoginPage(),
    "signUp_page": (context) => const SignUpPage(),
    "home_page": (context) => const HomePage(),
    "todo_page": (context) => const TodoPage(),
  };
}
