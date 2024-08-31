import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.to('home_page');
      },
    );

    return Scaffold(
      body: Center(),
    );
  }
}
