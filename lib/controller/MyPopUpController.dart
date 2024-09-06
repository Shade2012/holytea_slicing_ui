import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:holytea_slicing_ui/model/cartmodel.dart';
import 'package:holytea_slicing_ui/model/model.dart';
import 'package:holytea_slicing_ui/controller/CartController.dart';
import 'package:holytea_slicing_ui/views/cartpage.dart';

import '../widgets/popupwidget.dart';
import 'controller_counter.dart';

class MyCustomPopUpController extends GetxController {
  final CartController cartController = Get.put(CartController());
  final CounterController counterController = Get.put(CounterController());

  void showCustomModalForItem(HolyteaModel product, BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) => MyCustomPopUp(product: product),
    );
    counterController.reset();
  }

  void addToCart(HolyteaModel product) {
    cartController.addToCart(CartItem(
      productId: product.id.obs,
      productName: product.name,
      price: product.price,
      quantity: counterController.quantity.value.obs,
      productImage: product.image,
    ));
    counterController.reset();
    print('Item added to cart');
    Get.off(() => CartPage());
    print('Navigating to CartPage');
  }
}
