import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/themes.dart';
import 'cartpage.dart';
import 'menupage.dart';

class HomePage extends StatelessWidget {

  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(

      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.green),
              label: "home",


            ),
            BottomNavigationBarItem(icon: Icon(Icons.menu_book,color: colorText),
                label: ""

            ),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,color: colorText)
                ,
                label: "cart"

            ),
            BottomNavigationBarItem(icon: Icon(Icons.message_rounded,color: colorText)
              ,
              label: "chat"
              ,
            ),

          ],
          showSelectedLabels: false,
          onTap: (index) {
            if (index == 0) {
              // Navigate to HomePage
              //Nanti kamu ganti
              Get.off(HomePage());
            } else if (index == 1) {
              // Navigate to MenuPage
              Get.off(Menupage());
            } else if (index == 2) {
              // Navigate to CartPage
              Get.off(CartPage());
            } else if (index == 3) {
              // Navigate to MessagePage
              // Get.off(MessagePage));
              Get.snackbar("Page", "MessagePage tunggu di push alias sedang dibuat");
            }

          }
      ),
    );

  }
}
