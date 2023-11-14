import '../model/cartmodel.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  RxInt quantity = 1.obs;
  final RxList<CartItem> cartItems = <CartItem>[].obs;

  void addToCart(CartItem item) {
    // Check if an item with the same product ID already exists in the cart
    final existingItemIndex = cartItems.indexWhere((cartItem) => cartItem.productId == item.productId);

    if (existingItemIndex != -1) {
      // Item already exists in the cart, update the quantity
      cartItems[existingItemIndex].quantity += item.quantity;
    } else {
      // Item doesn't exist, add it to the cart
      cartItems.add(item);
    }
    cartItems.refresh();
  }

  // Remove an item from the cart
  void removeItemFromCart(int index) {
    cartItems.removeAt(index);
    cartItems.refresh();
  }

  // Increment the quantity of an item at a specific index
  void incrementQuantity(int index) {
    if (index >= 0 && index < cartItems.length) {
      cartItems[index].quantity++;
      cartItems.refresh();
    }
  }

  // Decrement the quantity of an item at a specific index
  void decrementQuantity(int index) {
    if (index >= 0 && index < cartItems.length) {
      if (cartItems[index].quantity > 0) {
        cartItems[index].quantity--;

        if (cartItems[index].quantity == 0) {
          // If the quantity becomes zero, remove the item from the cart
          removeItemFromCart(index);
        }
        cartItems.refresh();
      }
    }
  }

}
