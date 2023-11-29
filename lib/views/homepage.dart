import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:holytea_slicing_ui/views/messagelist.dart';
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
      appBar: AppBar(
          leading: null,

        backgroundColor: primaryColor,
        automaticallyImplyLeading: false,
        title: Title(
          color: Colors.white,
          child: Container(
            margin: EdgeInsets.only(left: 0),
            child: Image(
              image: AssetImage(image_logo_holytea),
              width: 100,
              height: 40,
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 25, right: 25),
        child: SingleChildScrollView(
          child: Column(
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
              GestureDetector(
                onTap:(){
                  Get.to(() => LocationPage());
                },
                child: Card(
                  margin: EdgeInsets.only(top: 30),
                  color: trackcolor,
                  child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.only(top: 20),
                          child: Text("Track Pesanan Anda",style: btnlogin)),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        child:Column(
                          children: [
                            Container(
                                padding: EdgeInsets.only(left: 70),
                                height: 32,
                                child: Icon(Icons.motorcycle,size: 40,)
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 30),
                              child: Row(
                                children: [
                                  Container(

                                    width: 220.0, // Adjust the width of the first segment
                                    child: LinearProgressIndicator(
                                      color: trackcolor2,
                                      backgroundColor: Colors.green, // Color of the first segment
                                      value: 1.0, // Full progress for the first segment
                                    ),
                                  ),
                                  // Adjust the width of the space between the segments
                                  Container(
                                    width: 114.7, // Adjust the width of the second segment
                                    child: LinearProgressIndicator(
                                      color: Colors.white,
                                      backgroundColor: Colors.white, // Color of the second segment
                                      value: 1.0, // Full progress for the second segment
                                    ),
                                  ),
                                ],
                              ),
                            )




                          ],
                        ),
                      )
                    ],
                  )
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 30, right: 200),
                child: Text(
                  "Best Seller",
                  style: subHeaderText,
                  textAlign: TextAlign.start,
                ),
              ),
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
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: ratedProducts.map((product) {
                          return Container(
                            width: 200, // Set a fixed width for each card
                            margin: EdgeInsets.only(
                                left: 8, right: 8, top: 8, bottom: 60),
                            child: GestureDetector(
                              onTap: () {
                                myCustomPopUpController.showCustomModalForItem(
                                    product, context);
                              },
                              child: Card(
                                elevation: 2,
                                child: Column(
                                  children: [
                                    Container(
                                      width: 200,
                                      height: 120,
                                      child: Stack(
                                        children: [
                                          Container(
                                            width: 200,
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20),
                                              ),
                                              child: FadeInImage(
                                                placeholder: AssetImage(image_placeholder),
                                                image: NetworkImage(product.image),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            top: 5,
                                            right: 8,
                                            child: Container(
                                                child: FavoriteIcon()
                                            ),
                                          ),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                          topLeft: Radius.circular(10),
                                        ),
                                      ),
                                    ),

                                    ListTile(
                                      title: Text(product.name,
                                          style: normalFontBlFigmaBlack),
                                      subtitle: RatingBar.builder(
                                        initialRating: product.rating,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemSize: 15,
                                        itemPadding: EdgeInsets.symmetric(
                                            horizontal: 1.0),
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (double rating) {
                                          print(null);
                                        },
                                      ),
                                      trailing: Icon(
                                          Icons.shopping_cart_outlined,
                                          color: Colors.green),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
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
