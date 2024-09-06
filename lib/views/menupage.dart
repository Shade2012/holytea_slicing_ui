import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:holytea_slicing_ui/controller/MyPopUpController.dart';
import 'package:holytea_slicing_ui/controller/controller.dart';
import 'package:holytea_slicing_ui/utils/themes.dart';
import 'package:holytea_slicing_ui/views/cartpage.dart';
import 'package:holytea_slicing_ui/views/homepage.dart';
import 'package:holytea_slicing_ui/views/profilepage.dart';
import 'package:holytea_slicing_ui/widgets/cardwidget.dart';
import 'package:holytea_slicing_ui/widgets/loveWidget.dart';
import 'package:holytea_slicing_ui/widgets/popupwidget.dart';

import 'messagelist.dart';

class Menupage extends StatelessWidget {
  final controller = Get.put(HolyteaController());
  final myCustomPopUpController = Get.put(MyCustomPopUpController());
  bool isItemFavorite = false;

  //margin: getMargin(200 > 133),


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: trackcolor)
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        // Reset the data to show all items
                        controller.displayedData.assignAll(controller.holytea);
                        controller.selectedIndex.value = 0;
                      },
                      child: Obx(() {
                        return Container(
                          padding: EdgeInsets.only(top: 12,bottom: 12),
                          width: 80,
                          decoration: controller.selectedIndex.value == 0
                              ? BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          )
                              : null,
                          child: Center(
                            child: Text(
                              "All",
                              style: TextStyle(
                                color: controller.selectedIndex.value == 0
                                    ? Colors.white
                                    : primaryColor,
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                    InkWell(
                      onTap: () {
                        // Filter data by Choco Series category
                        final teaSeriesData = controller.holytea
                            .where((product) => product.category == "Teaseries")
                            .toList();
                        controller.displayedData.assignAll(teaSeriesData);
                        controller.selectedIndex.value = 2;
                      },
                      child: Obx(() {
                        return Container(
                          padding: EdgeInsets.only(top: 12,bottom: 12),
                          width: 80,
                          alignment: Alignment.center,
                          decoration: controller.selectedIndex.value == 2
                              ? BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          )
                              : null,
                          child: Text(
                            "Tea",
                            style: TextStyle(
                              color: controller.selectedIndex.value == 2
                                  ? Colors.white
                                  : primaryColor,
                            ),
                          ),
                        );
                      }),
                    ),
                    InkWell(
                      onTap: () {
                        // Filter data by Choco Series category
                        final milkshakeSeriesData = controller.holytea
                            .where((product) => product.category == "Milkshakeseries" || product.category == "Cheesecreamseries" || product.category == 'Chocoseries')
                            .toList();
                        controller.displayedData.assignAll(milkshakeSeriesData);
                        controller.selectedIndex.value = 3;
                      },
                      child: Obx(() {
                        return Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(top: 12,bottom: 12),
                          width: 80,
                          decoration: controller.selectedIndex.value == 3
                              ? BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          )
                              : null,
                          child: Text(
                            "Milk",
                            style: TextStyle(
                              color: controller.selectedIndex.value == 3
                                  ? Colors.white
                                  : primaryColor,
                            ),
                          ),
                        );
                      }),
                    ),
                    InkWell(
                      onTap: () {
                        // Filter data by Choco Series category
                        final yakultSeriesData = controller.holytea
                            .where((product) => product.category == "Yakultseries")
                            .toList();

                        controller.displayedData.assignAll(yakultSeriesData);
                        controller.selectedIndex.value = 6;
                      },
                      child: Obx(() {
                        return Container(
                          padding: EdgeInsets.only(top: 12,bottom: 12),
                          width: 80,
                          alignment: Alignment.center,
                          decoration: controller.selectedIndex.value == 6
                              ? BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          )
                              : null,
                          child: Text(
                            "Yakult",
                            style: TextStyle(
                              color: controller.selectedIndex.value == 6 ? Colors.white : primaryColor,
                            ),
                          ),
                        );
                      }),
                    ),
                    InkWell(
                      onTap: () {
                        // Filter data by Choco Series category
                        final coffeSeriesData = controller.holytea
                            .where((product) => product.category == "Coffeseries")
                            .toList();
                        controller.displayedData.assignAll(coffeSeriesData);
                        controller.selectedIndex.value = 4;
                      },
                      child: Obx(() {
                        return Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(top: 12,bottom: 12),
                          width: 80,
                          decoration: controller.selectedIndex.value == 4
                              ? BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          )
                              : null,
                          child: Text(
                            "Coffe",
                            style: TextStyle(
                              color: controller.selectedIndex.value == 4
                                  ? Colors.white
                                  : primaryColor,
                            ),
                          ),
                        );
                      }),
                    ),

                  ],
                ),
              ),
            ),
            Obx(() {
              if (controller.isLoading.value) {
                return Center(child: CircularProgressIndicator());
              } else if (controller.displayedData.isEmpty) {
                return Text("No items available.");
              } else {
                return Expanded(
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: (controller.displayedData.length / 2).ceil(),
                    itemBuilder: (context, index) {
                      final firstProductIndex = index * 2;
                      final secondProductIndex = firstProductIndex + 1;
                      final product1 = controller.displayedData[firstProductIndex];
                      final product2 = secondProductIndex < controller.displayedData.length
                          ? controller.displayedData[secondProductIndex]
                          : null; // Handle cases where there is no second product.
                      return Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                myCustomPopUpController.showCustomModalForItem(product1,context);
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(vertical: 5),
                                height: 180,
                                  child: CardWidget(produk: product1, width: double.infinity,))
                            ),

                          ),
                          SizedBox(width: 10,),
                          if (product2 != null)
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  myCustomPopUpController.showCustomModalForItem(product2,context);
                                },
                                child: Container(
                                    margin: EdgeInsets.symmetric(vertical: 5),
                                    height: 180,
                                    child: CardWidget(produk: product2,width: double.infinity,))
                              ),
                            ),
                          if (product2 == null && index == (controller.displayedData.length + 1) ~/ 2 - 1)
                            Expanded(child: SizedBox(width: 20,height: 20,)),
                        ],
                      );
                    },
                  ),
                );
              }
            })


          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
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

                },
                icon: Icon(Icons.menu_book, color: Colors.green),
              ),
            ),
            label: "menu",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Get.off(() => CartPage());
              },
              icon: Icon(Icons.shopping_cart_outlined, color: colorText),
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
