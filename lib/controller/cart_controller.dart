import 'package:get/get.dart';
import 'package:shopping_app/models/product.dart';
import 'dart:math' as math;

class CartControllers extends GetxController {
  var cartItems = List<Product>().obs;

  addToCart(Product product) {
    cartItems.add(product);
  }

  void printVALUE() async {
    var number = List<int>();

    for (int i = 0; i < 10; i++) {
      await Future.delayed(Duration(seconds: 1));
      number.add(math.Random().nextInt(10));
      print(number[i]);
    }
  }

  double get count => cartItems.fold(0, (s, item) => s + item.price);
}
