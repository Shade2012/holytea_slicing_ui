
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
    final cartItem = cartController.cartItems.firstWhere((element) => element.productId.value == index,);
    return Container(
      child:  Row(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              color:Color.fromARGB(255, 243, 255, 238),
              borderRadius: BorderRadius.all(Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2), // Shadow color with opacity
                  blurRadius: 2, // Blur radius
                ),
              ]
            ),
            child: InkWell(
              onTap: () {
                cartController.decrementQuantity(cartItem.productId.value);
              },
              child: Icon(
                Icons.remove,
                color: primaryColor,
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
       Text(
          '${cartItem.quantity}',
          style: primaryTextBl,
        ),

          SizedBox(
            width: 12,
          ),
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                color:primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Shadow color with opacity
                    blurRadius: 2, // Blur radius
                  ),
                ]
            ),
            child: InkWell(
              onTap: () {
                cartController.incrementQuantity(cartItem.productId.value);
              },
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
