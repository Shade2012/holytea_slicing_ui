import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:holytea_slicing_ui/views/messagelist.dart';
import 'package:holytea_slicing_ui/widgets/cardwidget.dart';
import '../controller/MyPopUpController.dart';
import '../controller/controller.dart';
import '../utils/themes.dart';
import '../widgets/adsTranslation.dart';
import '../widgets/ewallet.dart';
import '../widgets/loveWidget.dart';
import 'cartpage.dart';
import 'locationpage.dart';
import 'menupage.dart';

class HomePage extends StatelessWidget {
  final controller = Get.put(HolyteaController());
  final myCustomPopUpController = Get.put(MyCustomPopUpController());

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(left: 25, right: 25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 40),
                child: eWallet(),
              ),
              Container(
                width: 340,
                margin: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: CarouselSlider(
                    items: [ads_1, ads_2].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: 340,
                            height: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                image: AssetImage(i),
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                    options: CarouselOptions(
                      height: 193,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeFactor: 0.3,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.only(top: 30, right: 200),
                child: Text(
                  "Founder Picks",
                  style: subHeaderText,
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(height: 20,),
              Obx(() {
                if (controller.isLoading.value) {
                  return CircularProgressIndicator();
                } else {
                  final ratedProducts = controller.displayedData
                      .where((product) => product.rating >= 4.5)
                      .toList();

                  if (ratedProducts.isEmpty) {
                    return Text("Item Not Available");
                  } else {
                    return Container(
                      height: 200,
                      child: ListView.separated(itemBuilder: (context, index) {
                        final filteredProductList = controller.holytea.value.where((element) => element.price > 10000,).toList();
                        final produk = filteredProductList[index];
                        return SizedBox(
                          width: 170,
                            child: CardWidget(produk: produk,width: 170.0,));
                      },scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {
                        return SizedBox(width: 10,);
                      }, itemCount: controller.holytea.value.where((element) => element.price > 10000,).length),
                    );
                  }
                }
              }),
              SizedBox(height: 20,),
              Container(
                child: Text(
                  "Best Seller",
                  style: subHeaderText,
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(height: 20,),
              Obx(() {
                if (controller.isLoading.value) {
                  return CircularProgressIndicator();
                } else {
                  final ratedProducts = controller.displayedData
                      .where((product) => product.rating >= 4.5)
                      .toList();

                  if (ratedProducts.isEmpty) {
                    return Text("Item Not Available");
                  } else {
                    return Container(
                      height: 200,
                      child: ListView.separated(itemBuilder: (context, index) {
                        final produk = ratedProducts[index];
                        return SizedBox(width: 170, child: CardWidget(produk: produk,width: 170.0,));
                      },scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {
                        return SizedBox(width: 10,);
                      }, itemCount: controller.holytea.value.where((element) => element.price > 10000,).length),
                    );
                  }
                }
              })
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(

        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.home, color: Colors.green),
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
