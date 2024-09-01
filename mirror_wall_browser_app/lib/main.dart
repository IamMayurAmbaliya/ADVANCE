import 'package:flutter/material.dart';
import 'package:mirror_wall_browser_app/pages/home_page/home_page.dart';
import 'package:mirror_wall_browser_app/provider/bookmark_provider.dart';
import 'package:mirror_wall_browser_app/provider/engine_provider.dart';
import 'package:mirror_wall_browser_app/routes/app_routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BookMarkProvider()),
        ChangeNotifierProvider(create: (context) => EngineProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.instance.routes,
    );
  }
}
