import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:media_player/pages/audio_page/audio_page.dart';
import 'package:media_player/pages/combo_page/combo_page.dart';
import 'package:media_player/pages/home_page/home_page.dart';
import 'package:media_player/pages/video_page/video_page.dart';
import 'package:media_player/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/audio_page',
          page: () => const AudioPage(),
        ),
        GetPage(
          name: '/video_page',
          page: () => const VideoPage(),
        ),
        GetPage(
          name: '/combos_page',
          page: () => const CombosPage(),
        ),
      ],
      // routes: AppRoutes.instance.routes,
    );
  }
}
