import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holytea_slicing_ui/utils/themes.dart';
import 'package:holytea_slicing_ui/views/paymentalert.dart';
import 'package:holytea_slicing_ui/widgets/checkedboxwidget.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: IconButton(
          onPressed: () {
            //bakal pindah ke profile
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
          ),
          color: Colors.white,
        ),
        title: Title(
          color: Colors.white,
          child: Center(
            child: Text(
              "Payment Method",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Container(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Select your payment method.",
                      style: normalFontBl,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomCheckbox(title: "GOPAY", subTitle: "Pay with gopay"),
                  CustomCheckbox(title: "OVO", subTitle: "Pay with ovo"),
                  CustomCheckbox(title: "BCA", subTitle: "Pay with BCA"),
                  CustomCheckbox(title: "CASH", subTitle: "Pay with cash")
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(color: bgColor),
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
                      Text(
                        "Rp xxx.xxx,00",
                        style: subHeaderText,
                      )
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
                        Get.to(() => PaymentAlert());
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
    );
  }
}
