import 'package:get/get.dart';
import 'package:shopping_app/models/product.dart';

class ShoppingController extends GetxController {
  var products = List<Product>().obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var response = [
      Product(
          id: 1,
          desc: 'This is product 1',
          img: '',
          name: 'Iphone 9',
          price: 1),
      Product(
          id: 2,
          desc: 'This is product 8',
          img: '',
          name: 'Iphone 6',
          price: 1),
      Product(
          id: 3,
          desc: 'This is product 3',
          img: '',
          name: 'Iphone 15',
          price: 1),
    ];

    products.value = response;
  }
}
