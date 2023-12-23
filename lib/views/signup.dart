import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'package:holytea_slicing_ui/controller/controllerLogin_Register.dart';
import 'package:holytea_slicing_ui/utils/themes.dart';
import 'package:get/get.dart';
import 'package:holytea_slicing_ui/views/login.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);
  final CtrDataUser ctrDataUser = Get.put(CtrDataUser()); // Mendaftarkan CtrDataUser
  final controller2 = Get.put(CtrDataUser());
  final TextEditingController ctrUsername = TextEditingController();
  final TextEditingController ctrPassword = TextEditingController();
  final TextEditingController ctrEmail = TextEditingController();
  final TextEditingController ctrPhone = TextEditingController();
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
              child: SingleChildScrollView(


                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: screenHeight * 0.04,bottom: screenHeight * 0.03),
                        width: screenWidth,
                        child: Column(
                          children: [
                            Center(child: Text("Hello,", style: newtextlogin)),
                            Center(
                                child: Text("Welcome to Holytea",
                                    style: newtextloginsecondary))
                          ],
                        ),
                      ),
                      myText(Icons.person_outlined,"Username", "Ketik Username anda", false , ctrUsername),
                      myText(Icons.mail_outline,"Email", "Ketik Email anda", true , ctrEmail),
                      password(Icons.lock_outline,"Password", "Ketik Password anda", ctrPassword),
                      Container(
                        margin: EdgeInsets.only(bottom: 30 ,top: 30),
                        width: screenWidth * 0.90,
                        child: ElevatedButton(
                          onPressed: () {
                            ctrDataUser.datauser(ctrUsername.text.toString(), ctrPassword.text.toString(), ctrEmail.text.toString(), ctrPhone.text.toString());
                            Get.to(() => LoginPage());
                          },
                          style: customButtonStyle,
                          child: Text(
                              "Sign Up",
                              style: btnlogin
                          ),
                        ),
                      ),
                      Container(margin: EdgeInsets.only(left: screenWidth * 0.25),
                        child: Center(
                          child: Row(
                            children: [
                              Text(
                                  'Have an account? ',
                                  style:  GoogleFonts.montserrat(fontWeight: FontWeight.normal,color: Colors.white)
                              ),
                              InkWell(
                                child: Text(
                                    'log in',
                                    style: GoogleFonts.montserrat(fontWeight: FontWeight.normal,color: Colors.white,decoration: TextDecoration.underline,decorationColor: Colors.white)
                                ),
                                onTap: () {
                                  Get.to(() => LoginPage());
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
          )
      ),
    );
  }
}
