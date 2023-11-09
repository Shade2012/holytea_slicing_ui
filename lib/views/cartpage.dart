import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holytea_slicing_ui/views/menupage.dart';
import '../controller/CartController.dart';
import '../utils/themes.dart';
import 'homepage.dart';

class CartPage extends StatelessWidget {
  final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Obx(() {
        // Use the Obx widget to listen for changes in cart items
        return ListView.builder(
          itemCount: cartController.cartItems.length,
          itemBuilder: (context, index) {
            final cartItem = cartController.cartItems[index];
            return ListTile(
              title: Text(cartItem.productName),
              leading: Image.network(cartItem.productImage),
              subtitle: Text("Quantity: ${cartItem.quantity}"),
              trailing: Text("Total: ${cartItem.price * cartItem.quantity}"),
            );
          },
        );
      }),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Get.off(() => HomePage());
              },
              icon: Icon(Icons.home, color: colorText),
            ),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: IconButton(
                onPressed: () {
                  Get.off(() => Menupage());
                },
                icon: Icon(Icons.menu_book, color: colorText),
              ),
            ),
            label: "menu",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {

              },
              icon: Icon(Icons.shopping_cart_outlined, color: Colors.green),
            ),
            label: "cart",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Get.snackbar(
                    "Page", "MessagePage tunggu di push alias sedang dibuat");
              },
              icon: Icon(Icons.message, color: colorText),
            ),
            label: "chat",
          ),
        ],
        showSelectedLabels: false,

      ),
    );
  }
}
