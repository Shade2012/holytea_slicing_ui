import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:holytea_slicing_ui/controller/controller.dart';
import 'package:holytea_slicing_ui/utils/themes.dart';
import 'package:holytea_slicing_ui/views/cartpage.dart';
import 'package:holytea_slicing_ui/views/homepage.dart';
import 'package:holytea_slicing_ui/views/profilepage.dart';
import 'package:holytea_slicing_ui/widgets/loveWidget.dart';

class Menupage extends StatelessWidget {
  final controller = Get.put(HolyteaController());
  bool isItemFavorite = false;
  int _currentIndex = 1;
  //margin: getMargin(200 > 133),


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        actions: [
          IconButton(
            onPressed: () {
              //bakal pindah ke profile
              Get.to(() => ProfilePage());
            },
            icon: Icon(Icons.person),
            style: iconStyleButton,
          ),
        ],
        title: Title(
          color: Colors.white,
          child: Center(
            child: Container(
              margin: EdgeInsets.only(left: 50),
              child: Text(
                "Menu",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: screenWidth * 0.90,
            height: screenHeight * 0.10,
            margin: EdgeInsets.only(left: 20, top: 20),
            padding: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(right: 193),
                      child: Text(
                        "Made With Love",
                        style: normalFontBlFigma,
                      )),
                  Container(
                      margin: EdgeInsets.only(right: 170),
                      child: Text(
                        "Special For You",
                        style: specialText,
                      ))
                ],
              ),
            ),
          ),
          Container(
            height: 50,
            child: ListView(
                scrollDirection: Axis.horizontal,
              children: [
                InkWell(
                  onTap: () {
                    // Reset the data to show all items
                    controller.displayedData.assignAll(controller.holytea);
                    controller.selectedIndex.value = 0;
                  },
                  child: Obx(() {
                    return Container(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        "All",
                        style: TextStyle(
                          color: controller.selectedIndex.value == 0
                              ? Colors.green
                              : Colors.black,
                        ),
                      ),
                    );
                  }),
                ),
                InkWell(
                  onTap: () {
                    // Filter data by Choco Series category
                    final chocoSeriesData = controller.holytea
                        .where((product) => product.category == "Chocoseries")
                        .toList();

                    controller.displayedData.assignAll(chocoSeriesData);
                    controller.selectedIndex.value = 1;

                  },
                  child: Obx(() {
                    return Container(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        "Choco Series",
                        style: TextStyle(
                          color: controller.selectedIndex.value == 1
                              ? Colors.green
                              : Colors.black,
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
                      padding: EdgeInsets.all(12),
                      child: Text(
                        "Tea Series",
                        style: TextStyle(
                          color: controller.selectedIndex.value == 2
                              ? Colors.green
                              : Colors.black,
                        ),
                      ),
                    );
                  }),
                ),
                InkWell(
                  onTap: () {
                    // Filter data by Choco Series category
                    final milkshakeSeriesData = controller.holytea
                        .where((product) => product.category == "Milkshakeseries")
                        .toList();
                    controller.displayedData.assignAll(milkshakeSeriesData);
                    controller.selectedIndex.value = 3;
                  },
                  child: Obx(() {
                    return Container(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        "Milkshake Series",
                        style: TextStyle(
                          color: controller.selectedIndex.value == 3
                              ? Colors.green
                              : Colors.black,
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
                      padding: EdgeInsets.all(12),
                      child: Text(
                        "Coffe Series",
                        style: TextStyle(
                          color: controller.selectedIndex.value == 4
                              ? Colors.green
                              : Colors.black,
                        ),
                      ),
                    );
                  }),
                ),
                InkWell(
                  onTap: () {
                    // Filter data by Choco Series category
                    final cheesecreamSeriesData = controller.holytea
                        .where(
                            (product) => product.category == "Cheesecreamseries")
                        .toList();
                    controller.displayedData.assignAll(cheesecreamSeriesData);
                    controller.selectedIndex.value = 5;
                  },
                  child: Obx(() {
                    return Container(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        "Cheese Cream Series",
                        style: TextStyle(
                          color: controller.selectedIndex.value == 5
                              ? Colors.green
                              : Colors.black,
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
                      padding: EdgeInsets.all(12),
                      child: Text(
                        "Yakult Series",
                        style: TextStyle(
                          color: controller.selectedIndex.value == 6 ? Colors.green : Colors.black,
                        ),
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),

          // Konten Anda di sini



          Obx(() {
            if (controller.isLoading.value) {
              return CircularProgressIndicator();
            } else if (controller.displayedData.isEmpty) {
              return Text("No items available.");
            } else {
              return Expanded(
                child: ListView.builder(
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
                          child: Card(
                            elevation: 2, // Customize the elevation as needed
                            margin: EdgeInsets.all(8), // Customize the margin as needed
                            child: Column(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width, // Use the screen width
                                  height: MediaQuery.of(context).size.width * 0.46, // Use the screen width // Adjust the height as needed
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(product1.image,),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      topLeft: Radius.circular(10),
                                    ),
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.only(left: 133,bottom: 135,top: 5,right: 7),
                                    padding: EdgeInsets.all(0),
                                    child: FavoriteIcon(),
                                  ),
                                ),


                                ListTile(
                                  title: Text(product1.name, style: normalFontBlFigmaBlack),
                                  subtitle: RatingBar.builder(
                                    initialRating: product1.rating,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 15,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ), onRatingUpdate: (double rating) {
                                    print(null);
                                  },
                                  ),
                                  trailing: Icon(Icons.shopping_cart_outlined,color: Colors.green,),
                                  // Add more fields to display as needed
                                ),
                              ],
                            ),
                          ),

                        ),
                        if (product2 != null)
                          Expanded(
                            child: Card(
                              elevation: 2, // Customize the elevation as needed
                              margin: EdgeInsets.all(8), // Customize the margin as needed
                              child: Column(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width, // Use the screen width
                                    height: MediaQuery.of(context).size.width * 0.46,  // Use the screen width // Adjust the height as needed

                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(product2.image, ),
                                        fit: BoxFit.cover,
                                      ),
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                          topLeft: Radius.circular(10),
                                        )
                                    ),
                                    child: Container(
                                      margin: EdgeInsets.only(left: 133,bottom: 135,top: 5,right: 7),
                                      padding: EdgeInsets.all(0),
                                      child: FavoriteIcon(),
                                    ),
                                  ),

                                  ListTile(
                                    title: Text(product2.name,style: normalFontBlFigmaBlack,),
                                    subtitle: RatingBar.builder(
                                      initialRating: product2.rating,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 15,
                                      itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ), onRatingUpdate: (double rating) {
                                      print(null);
                                    },
                                    ),
                                    trailing: Icon(Icons.shopping_cart_outlined,color: Colors.green,),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        if (product2 == null && index == (controller.displayedData.length + 1) ~/ 2 - 1)
                          Expanded(child: SizedBox()),
                      ],
                    );
                  },
                ),
              );
            }
          })


        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home,color: colorText),
              label: "home",


            ),
            BottomNavigationBarItem(icon: Icon(Icons.menu_book,color: Colors.green),
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
