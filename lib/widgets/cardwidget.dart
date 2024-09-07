import 'package:flutter/material.dart';
import 'package:holytea_slicing_ui/model/model.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';
import '../controller/MyPopUpController.dart';
import '../utils/themes.dart';

class CardWidget extends StatelessWidget {
  final myCustomPopUpController = Get.put(MyCustomPopUpController());
  final HolyteaModel produk;
  final width;
  CardWidget({required this.produk, required this.width});
  @override
  Widget build(BuildContext context) {
    final currencyFormat = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0);
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: () {
        myCustomPopUpController.showCustomModalForItem(produk, context);
      },

      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Stack(
          children: <Widget>[
            FadeInImage(
              placeholder: AssetImage(image_placeholder), // Path to your placeholder image
              image: NetworkImage(produk.image),
              fit: BoxFit.cover,
              width: width,
            ),
             Positioned(
               bottom: 0, // Position the container at the bottom
               left: 0, // Align it to the left
               right: 0,
               child: Container(
                 width: width,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5)
                  ),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(produk.name,style: contentTextVer4,),
                      const SizedBox(height: 5,),
                      Text(currencyFormat.format(produk.price),style: regulerWhite,),
                    ],
                  ),
                ),
             ),

          ],
        ),
      ),
    );
  }
}
