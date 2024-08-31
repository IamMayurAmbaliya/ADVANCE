import 'package:cupertino_widget/controllers/platform_controller.dart';
import 'package:cupertino_widget/pages/android_page/android_page.dart';
import 'package:cupertino_widget/pages/ios_page/ios_page.dart';
import 'package:cupertino_widget/routes/app_routes.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider.of<PlatFormController>(context).isAndroid
        ? const CupertinoApp(
            debugShowCheckedModeBanner: false,
            // routes: AppRoutes.instance.routes,
            home: IOSPage(),
          )
        : MaterialApp(
            darkTheme: ThemeData.dark().copyWith(
              colorScheme: ColorScheme.fromSwatch(
                brightness: Brightness.dark,
                primarySwatch: Colors.teal,
              ),
              scaffoldBackgroundColor: Colors.black,
              appBarTheme: const AppBarTheme(
                elevation: 4,
                scrolledUnderElevation: 0,
                surfaceTintColor: Colors.black,
                backgroundColor: Colors.black,
              ),
            ),
            themeMode: ThemeMode.light,
            debugShowCheckedModeBanner: false,
            // locale: DevicePreview.locale(context),
            // builder: DevicePreview.appBuilder,
            // routes: AppRoutes.instance.routes,
            home: const AndroidPage(),
          );
  }
}
