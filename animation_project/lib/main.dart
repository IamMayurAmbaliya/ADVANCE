import 'package:animation_project/app.dart';
import 'package:animation_project/controllers/api_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ApiController(),
        )
      ],
      child: const MyApp(),
    ),
  );
}
