import 'package:flutter/material.dart';
import 'package:my_browser_app/app.dart';
import 'package:my_browser_app/controllers/connectivity_controller.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ConnectivityController(),
      child: const MyApp(),
    ),
  );
}
