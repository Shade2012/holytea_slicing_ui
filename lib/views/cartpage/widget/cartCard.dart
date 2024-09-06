import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../../model/cartmodel.dart';
import '../../../model/model.dart';
import '../../../utils/themes.dart';
import '../../../widgets/counterwidgetCart.dart';
class CartCard extends StatelessWidget {
  final CartItem produk;
  final bool isCart;
  const CartCard({Key? key, required this.produk, required this.isCart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    final currencyFormat = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0);
    return Container(
      width: double.infinity,
      child: Row(
        children: [
          Visibility(
            visible: isCart == true,
            child: Obx(()=> Checkbox(
                activeColor: Colors.black,
                value: produk.selected.value,
                onChanged: (bool? value) {
                  produk.selected.value = value!;
                },
              ),
            ),
          ),
          Container(
            width: screenWidth * 0.87,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      SizedBox(
                          width: screenWidth * 0.2,
                          height: screenHeight * 0.14,
                          child: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(10)),child:  FadeInImage(
                            placeholder: AssetImage(image_placeholder), // Path to your placeholder image
                            image: NetworkImage(produk.productImage),
                            fit: BoxFit.cover,
                          ),)),
                      SizedBox(width: 20,),
                      Container(
                        height: screenHeight * 0.12,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(produk.productName,style: newcontentTextVer3,),
                            Obx(()=> Text(currencyFormat.format(produk.price * produk.quantity.value),style: normalFontBlFigma2,)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                    visible: isCart == true,
                    child: CounterWidget2(index: produk.productId.value))
              ],
            ),
          )
        ],
      ),
    );
  }
}

