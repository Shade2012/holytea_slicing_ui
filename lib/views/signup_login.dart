import 'package:flutter/material.dart';
import 'package:holytea_slicing_ui/views/login.dart';
import 'package:holytea_slicing_ui/views/signup.dart';
import '../utils/themes.dart';
import 'package:get/get.dart';

class Sign_upLoginPage extends StatelessWidget {
  const Sign_upLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: new AssetImage(image_signup_login),
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      children: [
                        Text(
                          "Unlock the sip-tacular experience !",
                          style: primaryText,
                            textAlign: TextAlign.center
                        ),
                        SizedBox(height: screenHeight * 0.50,),
                        Container(
                          margin: EdgeInsets.only(bottom: 30 ,top: 30),
                          width: screenWidth * 0.87,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.to(() => LoginPage());
                            },
                            style: customButtonStyle,
                            child: Text(
                              "Login",
                              style: btnlogin
                            ),
                          ),

                        ),
                        Row(

                          children: [
                            Container(
                                padding: EdgeInsets.only(right: 20, left: 25),
                              width: 185,
                              child: Divider(
                                color: Colors.grey, // Warna garis
                                thickness: 1.0,     // Ketebalan garis
                              )
                            ),
                            Container(
                              child: Text("or",style: contentTextVer2,),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 25,right: 20),
                                width: 180,
                              child: Divider(
                                color: Colors.grey, // Warna garis
                                thickness: 1.0,     // Ketebalan garis
                              )
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 50 ,top: 30),
                          width: screenWidth * 0.87,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.to(() => SignUp());
                            },
                            style: signUpStyleButton,
                            child: Text(
                              "Sign up",style: btnsignup,
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
      ),
    );
  }
}
