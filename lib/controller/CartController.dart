import 'package:get/get.dart';

import '../model/cartmodel.dart';

class CartController extends GetxController {
  var cartItems = <CartItem>[].obs;

  void addToCart(CartItem item) {
    cartItems.add(item);
  }
}
