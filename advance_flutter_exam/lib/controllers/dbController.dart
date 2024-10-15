import 'package:advance_flutter_exam/helpers/dbhelper.dart';
import 'package:advance_flutter_exam/models/product_model.dart';
import 'package:get/get.dart';

class AddProducts extends GetxController {
  List<Product> allProductsData = [];

  DbController() {
    initData();
  }

  Future<void> initData() async {
    await DbHelper.dbHelper.initDb();
    allProductsData = await DbHelper.dbHelper.getAllProduct();
    update();
  }

  Future<void> insertProduct({required Product product}) async {
    await DbHelper.dbHelper.insertProduct(product: product);
    initData();
    update();
  }

  Future<void> updateProduct({required Product product}) async {
    await DbHelper.dbHelper.updateProduct(product: product);
    initData();
    update();
  }

  void deleteProduct({required Product product}) {
    DbHelper.dbHelper.deleteProduct(product: product);
    initData();
    update();
  }
}
