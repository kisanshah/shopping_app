import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/controller/cart_controller.dart';

import 'package:shopping_app/controller/shopping_controller.dart';

class ShoppingPage extends StatelessWidget {
  final shoppingController = Get.put(ShoppingController());
  final cartController = Get.put(CartControllers());
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: GetX<ShoppingController>(
                init: ShoppingController(),
                initState: (_) {},
                builder: (controller) {
                  return ListView.builder(
                    itemCount: controller.products.length,
                    itemBuilder: (context, i) {
                      return Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${controller.products[i].name}',
                                  style: TextStyle(),
                                ),
                                SizedBox(height: 10),
                                Text('${controller.products[i].desc}'),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('${controller.products[i].price}'),
                                SizedBox(height: 10),
                                RaisedButton(
                                  onPressed: () {
                                    cartController
                                        .addToCart(controller.products[i]);
                                  },
                                  child: Text('Add to Cart'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            GetX<CartControllers>(
              builder: (controller) {
                return Text('Total : ${controller.count}');
              },
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
