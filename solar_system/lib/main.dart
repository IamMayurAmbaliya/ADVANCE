import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solar_system/app.dart';
import 'package:solar_system/controllers/planet_controller.dart';
import 'package:solar_system/controllers/theme_controller.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PlanetController(),
        ),
        ChangeNotifierProvider(
          create: (context) => ThemeController(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
