import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/pages/cart_page/cart_page.dart';
import 'package:getx_practice/pages/home_page/home_page.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      getPages: [
        GetPage(name: "/home_page", page: () => const HomePage()),
        GetPage(name: "/cart_page", page: () => const CartPage()),
      ],
    );
  }
}
