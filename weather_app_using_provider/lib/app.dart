import 'package:flutter/material.dart';
import 'package:weather_app_using_provider/pages/home_page/home_page.dart';
import 'package:weather_app_using_provider/routes/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: AppRoutes.instance.routes,
    );
  }
}
