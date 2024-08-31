import 'package:cupertino_widget/app.dart';
import 'package:cupertino_widget/controllers/platform_controller.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => PlatFormController(),
      child: const MyApp(),
    ),
  );
  // runApp(
  //   DevicePreview(
  //     enabled: true,
  //     builder: (context) => ChangeNotifierProvider(
  //       create: (context) => PlatFormController(),
  //       child: const MyApp(),
  //     ), // Wrap your app
  //   ),
  // );
}
