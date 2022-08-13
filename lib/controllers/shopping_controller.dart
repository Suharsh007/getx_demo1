import 'package:get/state_manager.dart';
import 'package:getx_demo1/models/product.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs; //Observable Instance

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var productResult = [
      Product(
          id: 1,
          price: 30,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'First Prod'),
      Product(
          id: 2,
          price: 40,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'Sec Prod'),
      Product(
          id: 3,
          price: 49.5,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'Third Prod'),
    ];

    products.value = productResult;
  }
}
