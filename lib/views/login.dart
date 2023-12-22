

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'package:holytea_slicing_ui/controller/controllerLogin_Register.dart';
import 'package:holytea_slicing_ui/utils/themes.dart';
import 'package:get/get.dart';

import 'package:holytea_slicing_ui/views/homepage.dart';
import 'package:holytea_slicing_ui/views/signup.dart';


class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final CtrDataUser ctrDataUser = Get.put(CtrDataUser());
  final controller2 = Get.put(CtrDataUser());
  final TextEditingController ctrUsername = TextEditingController();
  final TextEditingController ctrPassword = TextEditingController();

  Widget myText(
      IconData icon,
      String label,
      String hint,
      bool type,
      TextEditingController controller,
      ) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: TextField(
        controller: controller,
        obscureText: type,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          labelText: label,
          prefixIcon: Icon(icon),
          labelStyle: GoogleFonts.montserrat(
            textStyle: TextStyle(color: newsecondaryBGColor),
          ),
          hintStyle: GoogleFonts.montserrat(
            textStyle: TextStyle(color: newsecondaryBGColor, fontSize: 12),
          ),
        ),
      ),
    );
  }

  Widget password(
      IconData icon,
      String label,
      String hint,
      TextEditingController controller,
      ) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: Obx(()=> TextField(
        controller: controller,
        obscureText: controller2.obscureText.value,
        decoration: InputDecoration(
          suffixIcon: IconButton(onPressed: (){
            controller2.obscureText.value =!controller2.obscureText.value;
          },
            icon: Icon(controller2.obscureText.value?Icons.visibility_off:Icons.visibility),),
          // suffixIcon: ),
          border: InputBorder.none,
          hintText: hint,
          labelText: label,
          prefixIcon: Icon(icon),
          labelStyle: TextStyle(color: newsecondaryBGColor),
          hintStyle: TextStyle(
            color: newsecondaryBGColor,
            fontSize: 12,
          ),
        ),
      ),
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(image_awal_set), fit: BoxFit.cover)),
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
              child: Container(
                width: screenWidth,
                height: screenHeight,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: screenHeight * 0.20),
                      width: screenWidth,
                      child: Column(
                        children: [
                          Center(child: Text("Hello,", style: newtextlogin)),
                          Center(
                              child: Text("Welcome back again",
                                  style: newtextloginsecondary))
                        ],
                      ),
                    ),
                    myText(Icons.mail_outline, "Email", "Enter your Username", false, ctrUsername),
                    password(Icons.lock_outline, "Password", "Enter your Password", ctrPassword),

                    Container(
                        margin: EdgeInsets.only(left: 170),
                        child: Text("Forgot Password?",
                            style:  GoogleFonts.montserrat(fontWeight: FontWeight.normal,color: Colors.white)
                        )),
                    Container(
                      margin: EdgeInsets.only(bottom: 30, top: 30),
                      width: screenWidth * 0.90,
                      child: ElevatedButton(
                        onPressed: () {
                          if (ctrUsername.text !=
                              ctrDataUser.ctrUsername.value ||
                              ctrPassword.text !=
                                  ctrDataUser.ctrPassword.value) {
                            Get.snackbar('Error', 'Email atau username salah',
                                snackPosition: SnackPosition.BOTTOM,
                                backgroundColor: Colors.red,
                                colorText: Colors.white);
                          } else {
                            Get.to(() => HomePage());
                          }
                        },
                        style: customButtonStyle,
                        child: Text("Sign In", style: btnlogin),
                      ),
                    ),
                    Container(margin: EdgeInsets.only(left: screenWidth * 0.20),
                        child: Center(
                          child: Row(
                            children: [
                              Text(
                                'Don’t have an account? ',
                                  style:  GoogleFonts.montserrat(fontWeight: FontWeight.normal,color: Colors.white)
                              ),
                              InkWell(
                                child: Text(
                                    'Create',
                                    style: GoogleFonts.montserrat(fontWeight: FontWeight.normal,color: Colors.white,decoration: TextDecoration.underline,decorationColor: Colors.white)
                                ),
                                onTap: () {
                                  Get.to(() => SignUp());
                                },
                              )

                            ],
                          ),

                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


