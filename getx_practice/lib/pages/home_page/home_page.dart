import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/controllers/product_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ProductController productController = ProductController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
      ),
      // body: Column(
      //   children: [
      //     IconButton(
      //       onPressed: () {
      //         Get.toNamed('cart_page');
      //       },
      //       icon: const Icon(Icons.navigate_next_outlined),
      //     ),
      //     IconButton(
      //       onPressed: () {
      //         Get.to('cart_page');
      //       },
      //       icon: const Icon(Icons.navigate_next_outlined),
      //     )
      //   ],
      // ),
      body: Obx(() {
        if (productController.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            itemCount: productController.allProducts.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(productController.allProducts[index].productId),
              );
            },
          );
        }
      }),
    );
  }
}
