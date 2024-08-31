import 'package:flutter/material.dart';
import 'package:mirror_browser_app/app.dart';
import 'package:mirror_browser_app/controllers/all_in_one_controller.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BrowserController(),
        )
      ],
      child: const MyApp(),
    ),
  );
}
