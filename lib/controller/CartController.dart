import '../model/cartmodel.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  RxInt quantity = 1.obs;
  RxBool all = false.obs;
  final RxList<CartItem> cartItems = <CartItem>[].obs;

  void addToCart(CartItem item) {
    // Check if an item with the same product ID already exists in the cart
    final existingItemIndex = cartItems.indexWhere((cartItem) => cartItem.productId == item.productId);

    if (existingItemIndex != -1) {
      // Item already exists in the cart, update the quantity
      cartItems[existingItemIndex].quantity += item.quantity.value;
    } else {
      // Item doesn't exist, add it to the cart
      cartItems.add(item);
    }
    cartItems.refresh();
  }

  // Remove an item from the cart
  void removeItemFromCart(int index) {
    final cartItem = cartItems.firstWhere((element) => element.productId.value == index,);
    cartItems.remove(cartItem);
    cartItems.refresh();
  }

  // Increment the quantity of an item at a specific index
  void incrementQuantity(int index) {
    final cartItem = cartItems.firstWhere((element) => element.productId.value == index,);
      cartItem.quantity++;
      cartItems.refresh();
  }

  // Decrement the quantity of an item at a specific index
  void decrementQuantity(int index) {
    final cartItem = cartItems.firstWhere((element) => element.productId.value == index,);
      if (cartItem.quantity > 0) {
        cartItem.quantity--;

        if (cartItem.quantity == 0) {
          // If the quantity becomes zero, remove the item from the cart
          removeItemFromCart(index);
        }
        cartItems.refresh();
      }
  }

}
