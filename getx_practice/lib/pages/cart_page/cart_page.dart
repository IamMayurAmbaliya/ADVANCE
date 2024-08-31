import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CartPage"),
      ),
      body: Column(
        children: [
          IconButton(
            onPressed: () {
              Get.offNamed("home_page");
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
          )
        ],
      ),
    );
  }
}
