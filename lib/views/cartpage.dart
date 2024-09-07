import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holytea_slicing_ui/views/cartpage/widget/cartCard.dart';
import 'package:holytea_slicing_ui/views/menupage.dart';
import 'package:holytea_slicing_ui/views/paymentpage.dart';
import 'package:holytea_slicing_ui/widgets/counterwidget.dart';
import 'package:holytea_slicing_ui/widgets/counterwidgetCart.dart';
import 'package:holytea_slicing_ui/widgets/ewallet.dart';
import 'package:intl/intl.dart';
import '../controller/CartController.dart';
import '../controller/controller_counter.dart';
import '../model/cartmodel.dart';
import '../utils/themes.dart';
import 'homepage.dart';
import 'messagelist.dart';

class CartPage extends StatelessWidget {
  final cartController = Get.put(CartController());
  final controllerCounter = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    final currencyFormat =
        NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, top: 50),
            child: Text('Your Order(s)', style: subHeaderText),
          ),
          Expanded(
            child: Obx(() {
              if (cartController.cartItems.isEmpty) {
                return Center(
                  child: Image.asset(image_cart),
                );
              } else {
                return Column(
                  children: [
                    Expanded(
                      child: ListView.separated(
                        itemCount: cartController.cartItems.length,
                        itemBuilder: (BuildContext context, int index) {
                          final cartItem = cartController.cartItems[index];
                          return CartCard(produk: cartItem,isCart: true,);
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 20,
                          );
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 30,right: 20,left: 20),
                      width: double.infinity,
                      height: screenHeight * 0.23,
                      decoration:
                      BoxDecoration(color: Color.fromARGB(255, 230, 255, 221)),
                      child: Column(
                        children: [
                          Obx(() => Padding(
                            padding: const EdgeInsets.only(bottom: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Checkbox(
                                          value: cartController.all.value,
                                          activeColor: primaryColor,
                                          side: BorderSide(color: primaryColor, width: 2),
                                          onChanged: (bool? value) {
                                            if(value == true){
                                              for (CartItem cartItem in cartController.cartItems) {
                                                cartItem.selected.value = true;
                                              }
                                              cartController.all.value = value!;
                                            }else{
                                              for (CartItem cartItem in cartController.cartItems) {
                                                cartItem.selected.value = false;
                                              }
                                              cartController.all.value = value!;
                                            }
                                          },
                                        ),
                                      ),
                                      Text(
                                        'All',
                                        style: contentTextVer3,
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('Total :',style: contentTextVer3,),
                                    Obx(() {
                                      int totalPrice = 0;
                                      for (CartItem cartItem in cartController.cartItems.where((element) => element.selected.value == true,)) {
                                        totalPrice += cartItem.price.toInt() *
                                            cartItem.quantity.value;
                                      }
                                      return Text(currencyFormat.format(totalPrice),style: contentTextVer3,);
                                    })
                                  ],
                                )
                              ],
                            ),
                          ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 60,
                            child: ElevatedButton(
                              onPressed: () {
                                if(cartController.cartItems.where((element) => element.selected.value == true ,).length != 0){
                                Get.to(PaymentPage());
                                }else{
                                  Get.snackbar('Pesan', 'atleast pick one menu');
                                }
                                // print(cartController.cartItems.length);
                              },
                              style: customButtonStyle,
                              child: Text(
                                "Checkout",
                                style: btnlogin,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                );
              }
            }),
          ),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
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
              onPressed: () {},
              icon: Icon(Icons.shopping_cart_outlined, color: Colors.green),
            ),
            label: "cart",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Get.off(() => MessageList());
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
