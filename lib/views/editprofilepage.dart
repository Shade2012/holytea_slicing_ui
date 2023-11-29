import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:holytea_slicing_ui/views/profilepage.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import '../controller/controllerLogin_Register.dart';
import '../controller/controller_profilepage.dart';
import '../utils/themes.dart';
class EditProfile extends StatelessWidget {
  final ProfilepageController profilepageController = Get.put(ProfilepageController());

  EditProfile({Key? key}) : super(key: key);
  final TextEditingController ctrUsername = TextEditingController();
  final TextEditingController ctrEmail = TextEditingController();
  final TextEditingController ctrPhone = TextEditingController();

  Widget myText( IconData icon,String label,String hint, bool type, TextEditingController controller,String initialvalue){
    if (controller.text.isEmpty) {
      controller.text = initialvalue;
    }
    return Container(
      margin: EdgeInsets.all(20),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        // Atur radius sesuai keinginan Anda
        color: primaryTransColor,
      ),
      child: TextField(
        controller: controller,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          labelText: label,
          prefixIcon: Icon(icon),
          labelStyle: GoogleFonts.inter(textStyle:TextStyle(color: Colors.white, )),
          hintStyle: GoogleFonts.inter(textStyle:TextStyle(color: Colors.white,fontSize: 12 )),
        ),
        obscureText: type,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: IconButton(
          onPressed: () {
            //bakal pindah ke profile
            Get.off(() => ProfilePage());
          },
          icon: Icon(Icons.arrow_back,),
          color: Colors.white,
        ),
        title: Title(
          color: Colors.white,

            child: Container(

              child: Text(
                "Edit Profile",
                style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
        ),
      ),
      body: Center(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Obx(() {
                      return GestureDetector(
                        onTap: () {
                          profilepageController.getImage(ImageSource.gallery);
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: ClipRRect( // Menggunakan ClipRRect untuk memotong gambar yang dipilih
                              borderRadius: BorderRadius.circular(500.0), // Membuat gambar menjadi bentuk lingkaran
                              child: profilepageController.selectedImagePath.value.isEmpty
                                  ? Container(
                                padding: EdgeInsets.only(bottom: 10),
                                width: 200.0,
                                height: 220.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.person,
                                  size: 200,
                                  color: Colors.black,
                                ),
                              )
                                  :
                              Container(
                                  margin: EdgeInsets.only(left: 90,right: 90),
                                  width: 200,
                                  height: 200,
                                  child: ClipOval(
                                    child: Image.file(File(profilepageController.selectedImagePath.value),fit: BoxFit.cover ),
                                  ))
                          ),
                        ),
                      );
                    }),
                myText(Icons.person,"Username", "Ketik Username anda", false , ctrUsername,profilepageController.ctrUsername.value),
                   myText(Icons.email,"Email", "Ketik Email anda", false , ctrEmail,profilepageController.ctrEmail.value),
                   myText(Icons.phone,"Phone", "Ketik No.HP anda", false , ctrPhone,profilepageController.ctrPhone.value),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: screenWidth * 0.90,
                      child: ElevatedButton
                        (onPressed: () {
                        profilepageController.editprofile(ctrUsername.text.toString(),  ctrEmail.text.toString(), ctrPhone.text.toString());

                      }, style: customButtonStyle,
                        child: Text("Confirm",style: btnlogin,)),
                    )
                  ],
        ),
              ),
            ),
      ),
    );
  }
}
