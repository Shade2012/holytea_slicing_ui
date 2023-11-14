
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holytea_slicing_ui/utils/themes.dart';

import '../controller/CartController.dart';

class CounterWidget2 extends StatelessWidget {
  final cartController = Get.put(CartController());
  int index;
  CounterWidget2({required this.index });
  @override
  Widget build(BuildContext context) {
    final cartItem = cartController.cartItems[index];
    return Container(
      child:  Row(
        children: [
          FloatingActionButton(
            onPressed: () {
              cartController.decrementQuantity(index);
            },
            backgroundColor: bgColor,
            mini: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Icon(
                Icons.remove,
                color: primaryColor,
              ),
            ),
          ),
          SizedBox(
            width: 16,
          ),
       Text(
          '${cartItem.quantity}',
          style: primaryTextBl,
        ),

          SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            onPressed: () {
              cartController.incrementQuantity(index);

            },
            backgroundColor: primaryColor,
            mini: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Icon(
                Icons.add,
                color: primaryTextColor,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),

        ],
      ),
    );
  }
}
