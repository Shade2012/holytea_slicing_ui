import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holytea_slicing_ui/signup_login.dart';
import 'themes.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: new AssetImage(image_awal_set),
              fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [Colors.black12, Colors.black87])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    children: [
                      Text(
                        "Unleash a world",
                        style: primaryText,
                      ),
                      SizedBox(height: 30,),
                      Text(
                        "Unleash a world of flavor in every sip, while you still can",
                        style: secondaryText,
                        textAlign: TextAlign.center
                      ),

                      Container(
                        margin: EdgeInsets.only(bottom: 50 ,top: 30),
                        width: screenWidth * 0.87,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => Sign_upLoginPage());
                          },
                          style: customButtonStyle,
                          child: Text(
                            "Login",
                            style: btnlogin,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
