import '../controller/MyPopUpController.dart';
import '../controller/controller_counter.dart';
import '../model/model.dart';
import '../utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'checkedboxwidget.dart';
import 'counterwidget.dart';
import 'loveWidget.dart';

class MyCustomPopUp extends StatelessWidget {
  final HolyteaModel product;
  final MyCustomPopUpController controller = Get.put(MyCustomPopUpController());
  final CounterController controllerCounter = Get.put(CounterController());

  MyCustomPopUp({required this.product});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height * 0.93, // Adjust the percentage as needed
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: primaryTextColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: NetworkImage(product.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product.name,
                  style: primaryTextBl,
                ),
                Transform.scale(
                  scale: 1,
                  child: Container(
                    padding: EdgeInsets.only(right: 16, top: 5),
                    width: 55,
                    height: 40,
                    child: FavoriteIcon(),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CounterWidget(),
                  Obx(() => Container(
                    child: Text(
                      "Rp " + (controllerCounter.quantity.value * product.price).toString(),
                      style: contentTextVer2Grey,
                    ),
                  ),
                  )

                ],
              ),

            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Add a topping?",
                style: primaryTextBl,
              ),
            ),
            CustomCheckbox(
              title: "Pearl",
              subTitle: "Subtitle Text",
            ),
            CustomCheckbox(title: "Extra ice", subTitle: "subTitle"),
            CustomCheckbox(title: "Less ice", subTitle: "subTitle"),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: ElevatedButton(
                onPressed: () {
                  controller.addToCart(product);
                },
                style: customButtonStyle,
                child: Text(
                  "Add to cart",
                  style: btnlogin,
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}
