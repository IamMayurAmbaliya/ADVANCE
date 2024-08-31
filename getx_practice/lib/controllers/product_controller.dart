import 'package:get/get.dart';
import 'package:getx_practice/helpers/product_helper.dart';
import 'package:getx_practice/models/product_model.dart';

class ProductController extends GetxController {
  RxList<Product> allProducts = <Product>[].obs;
  RxList<Product> cartProducts = <Product>[].obs;
  RxBool isLoading = true.obs;

  ProductController() {
    initData();
  }
  Future<void> initData() async {
    allProducts(await ApiService.apiService.getData());
    // allProducts.value=await ApiService.apiService.getData();
    isLoading = false.obs;
  }

  void addToCart({required Product product}) {
    cartProducts.add(product);
  }
}
