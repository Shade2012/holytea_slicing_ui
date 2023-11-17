import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holytea_slicing_ui/utils/themes.dart';
import 'package:holytea_slicing_ui/views/locationpage.dart';
import 'package:http/http.dart';

class PaymentAlert extends StatefulWidget {
  const PaymentAlert({super.key});

  @override
  State<PaymentAlert> createState() => _PaymentAlertState();
}

class _PaymentAlertState extends State<PaymentAlert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 60, vertical: 80),
        child: Column(
          children: [
            Text(
              "Congratulations !!",
              style: primaryTextBl,
            ),
            Container(

              // width: MediaQuery.sizeOf(context).width * .5,
              // height: MediaQuery.sizeOf(context).height * .5,
              // decoration:
              //     BoxDecoration(color: primaryColor, shape: BoxShape.circle),
                child: Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.5,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 184, 238, 166),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 80,
                        ),
                        width: MediaQuery.of(context).size.width * 0.38,
                        height: MediaQuery.of(context).size.height * 0.38,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                )),
            Text(
              "Payment Succesful, continue to see location",
              style: btnsignup,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 60,
              child: ElevatedButton(
                  onPressed: () {
                    Get.off(() => LocationPage());
                  },
                  style: customButtonStyle,
                  child: Text(
                    "Continue",
                    style: btnlogin,
                  )),
            )
          ],
        ),
      ),
    );

  }
}
