import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'package:holytea_slicing_ui/controller/controller.dart';
import 'package:holytea_slicing_ui/utils/themes.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
   LoginPage({Key? key}) : super(key: key);
   final CtrDataUser ctrDataUser = Get.put(CtrDataUser()); // Mendaftarkan CtrDataUser

  final TextEditingController ctrUsername = TextEditingController();
  final TextEditingController ctrPassword = TextEditingController();

   Widget myText( IconData icon,String label,String hint, bool type, TextEditingController controller ){
     Get.find<CtrDataUser>();
     return Container(
       margin: EdgeInsets.all(20),

       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(10.0),
         // Atur radius sesuai keinginan Anda
         color: secondaryBGColor,
       ),
       child: TextField(
         controller: controller,

         decoration: InputDecoration(
           border: InputBorder.none,
           hintText: hint,
           labelText: label,
           prefixIcon: Icon(icon),
           labelStyle: GoogleFonts.inter(textStyle:TextStyle(color: Colors.black, )),
           hintStyle: GoogleFonts.inter(textStyle:TextStyle(color: Colors.black,fontSize: 12 )),
         ),
         obscureText: type,
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

            child: Container(
              width: screenWidth * 0.90,
                height: screenHeight * 0.70,
              margin: EdgeInsets.symmetric(horizontal : 20),
              decoration: BoxDecoration(
                color: bgColorLogin_Register,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45.0), // Kiri atas 15px
                  topRight: Radius.circular(5.0),  // Kanan atas 5px
                  bottomLeft: Radius.circular(5.0), // Kiri bawah 5px
                  bottomRight: Radius.circular(45.0), // Kanan bawah 15px
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 207),
                    width: 100.0, // Atur lebar sesuai keinginan Anda
                    height: 100.0, // Atur tinggi sesuai keinginan Anda
                    child: Image.asset(image_logo_holytea),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 240),
                  child: Text("LOGIN",style: btnsignup,),
                  ),
                  myText(Icons.person,"Username", "Ketik Username anda", false , ctrUsername),
                  myText(Icons.lock,"Password", "Ketik Password anda", true , ctrPassword),
                  Container(
                      margin: EdgeInsets.only(left: 170),
                      child: Text("Forgot Password?",style: TextStyle(fontWeight: FontWeight.bold),)
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 30 ,top: 30),
                    width: screenWidth * 0.80,
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
                  Container(
                    margin: EdgeInsets.only(right: 105),
                    child: Text("Don’t have an account? sign up",style:TextStyle(fontWeight: FontWeight.bold),),
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
