import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_demo1/models/product.dart';

class CartController extends GetxController {
  var cartItems = <Product>[].obs; //Observable Instance

  int get count => cartItems.length;
  double get totalPrice => cartItems.fold(
      0,
      (sum, item) =>
          sum + item.price); //Instead of creating field we defined a property
  addToCart(Product product) {
    cartItems.add(product);
  }
}
