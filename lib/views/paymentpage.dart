import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holytea_slicing_ui/utils/themes.dart';
import 'package:holytea_slicing_ui/views/paymentalert.dart';
import 'package:holytea_slicing_ui/widgets/checkedboxwidget.dart';
import 'package:intl/intl.dart';
import '../controller/CartController.dart';
import '../model/cartmodel.dart';
import 'cartpage.dart';
import 'cartpage/widget/cartCard.dart';


class PaymentPage extends StatelessWidget {
  final cartController = Get.put(CartController());
 PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final currencyFormat = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Title(
          color: Colors.white,
          child: Center(
            child: Text(
              "Checkout",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Container(
                child: Column(
                  children: [
                Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Icon(Icons.location_on_outlined, color: primaryColor),
                SizedBox(width: 10,),
                Expanded( // Wrap Column with Expanded to take available space
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Address (Home)', style: normalFontBlFigmaBlack),
                      Text(
                        'Jl. Bayangkara Pusdiklantas No.27-6, Paku Jaya, Kec. Serpong Utara, Kota Tangerang Selatan, Banten 15326',
                        style: normalFontBlFigmagrey,
                        softWrap: true,
                        overflow: TextOverflow.visible, // Ensures text visibility
                      ),
                    ],
                  ),
                ),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.store_outlined,color: primaryColor,),
                        SizedBox(width: 10,),
                        Text('Holytea',style: contentTextVer2Bl,)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text('Shipping option'),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.food_bank_outlined,color: Colors.red,),
                                RichText(text: TextSpan(
                                  children: [
                                    TextSpan(text: 'Shopee',style:TextStyle(fontWeight: FontWeight.normal,color: Colors.red) ),
                                    TextSpan(text: 'Food',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.red) )
                                  ]
                                )),
                              ],
                            ),
                            Text('Estimated Time 15 minutes',style: contentTextGrey,)
                          ],
                        ),
                        Text(currencyFormat.format(6999),style: newcontentTextVer3,)
                      ],
                    ),
                    SizedBox(height: 20,),
                    Text('Detail order'),
                    Divider(),
                    Container(
                      height: 300,
                      child: ListView.separated(
                        itemCount: cartController.cartItems.length,
                        itemBuilder: (BuildContext context, int index) {
                          final filtercartItem = cartController.cartItems.where((element) => element.selected.value == true).toList();
                          final cartItem = filtercartItem[index];
                          return  Row(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: screenWidth * 0.2,
                                        height: screenHeight * 0.14,
                                        child: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(10)),child:  FadeInImage(
                                          placeholder: AssetImage(image_placeholder), // Path to your placeholder image
                                          image: NetworkImage(cartItem.productImage),
                                          fit: BoxFit.cover,
                                        ),)),
                                    SizedBox(width: 20,),
                                    Container(
                                      height: screenHeight * 0.12,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(cartItem.productName,style: newcontentTextVer3,),
                                          Obx(()=> Text(currencyFormat.format(cartItem.price * cartItem.quantity.value),style: normalFontBlFigma2,)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 20,
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Message'),
                        Text('Leave a message here..',style: TextStyle(color: Colors.grey),),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Order total'),
                        Obx((){
                          int totalPrice = 0;
                          for (CartItem cartItem in cartController.cartItems.where((element) => element.selected.value == true,)) {
                            totalPrice += cartItem.price.toInt() *
                                cartItem.quantity.value;
                          }
                          return Text(currencyFormat.format(totalPrice),style: newcontentTextVer3,);
                        }),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,)
              // Align(
              //         alignment: Alignment.topLeft,
              //         child: Text(
              //           "Select your payment method.",
              //           style: normalFontBl,
              //         ),
              //       ),
              //       SizedBox(
              //         height: 30,
              //       ),
              //       CustomCheckbox(title: "GOPAY", subTitle: "Pay with gopay"),
              //       CustomCheckbox(title: "OVO", subTitle: "Pay with ovo"),
              //       CustomCheckbox(title: "BCA", subTitle: "Pay with BCA"),
              //       CustomCheckbox(title: "CASH", subTitle: "Pay with cash")
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [


                        Text(
                          "Total :",
                          style: subHeaderText,
                        ),
                        Obx(() {
                          // Calculate the total price by summing up totalItemPrice of all items
                          double totalPrice = 0;
                          for (CartItem cartItem in cartController.cartItems.where((element) => element.selected.value == true,)) {
                            totalPrice += cartItem.price.toInt() *
                                cartItem.quantity.value;
                          }
                          return Text(
                            currencyFormat.format(totalPrice), // Display the total price
                            style: subHeaderText,
                          );
                        }),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.off(() => PaymentAlert());
                        },
                        style: customButtonStyle,
                        child: Text(
                          "Pay Now",
                          style: btnlogin,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
