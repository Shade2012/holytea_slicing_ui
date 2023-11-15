// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:holytea_slicing_ui/controller/controller_profilepage.dart';
import 'package:holytea_slicing_ui/utils/themes.dart';
import 'package:get/get.dart';
import 'package:holytea_slicing_ui/views/editprofilepage.dart';
import 'package:holytea_slicing_ui/views/privacypage.dart';
import 'package:holytea_slicing_ui/views/signup_login.dart';
import 'package:image_picker/image_picker.dart';
import 'package:holytea_slicing_ui/widgets/profilepagewidget.dart';


class ProfilePage extends StatelessWidget {

  ProfilepageController profileController = Get.put(ProfilepageController());


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          leading: IconButton(
            onPressed: () {
              //bakal pindah ke profile
              Get.back();
            },
            icon: Icon(Icons.arrow_back,),
            color: Colors.white,
          ),
          title: Title(
            color: Colors.white,
            child: Container(

              child: Text(
                "My Profile",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        body: Center(
            child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .05,
            ),
            Obx(() {
                return Container(
                  margin: EdgeInsets.only(top: 25),
                  child: ClipRRect( // Menggunakan ClipRRect untuk memotong gambar yang dipilih
                    borderRadius: BorderRadius.circular(500.0), // Membuat gambar menjadi bentuk lingkaran
                    child: profileController.selectedImagePath.value.isEmpty
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
                          child: Image.file(File(profileController.selectedImagePath.value),fit: BoxFit.cover ),
                        ))
                  ),
                );
            }),

            SizedBox(
              height: MediaQuery.sizeOf(context).height * .03,
            ),
            Center(
              child: Obx(() =>
                Text(
                  profileController.ctrUsername.value,
                  style: primaryTextBl,
                ),
              ),
            ),

            SizedBox(
              height: MediaQuery.sizeOf(context).height * .05,
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.all(30),
              width: double.infinity,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
                child: Column(
                  children: [
                      Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Email", style: subHeaderText),
                    ),

                    SizedBox(
                      height: 8,
                    ),

                    Obx(() => Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        profileController.ctrEmail.value,
                        style: TextStyle(
                          fontSize: 16,
                          color: secondaryColor,
                        ),
                      ),
                    ),
                    ),


                    SizedBox(
                      height: 20,
                    ),
                    titleProfile("Phone"),
                    SizedBox(
                      height: 8,
                    ),

                    Obx(() =>Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        profileController.ctrPhone.value,
                        style: TextStyle(
                          fontSize: 16,
                          color: secondaryColor,
                        ),
                      ),
                    ),
                    ),

                    SizedBox(
                      height: 30,
                    ),
                    Divider(
                      thickness: 3,
                      color: primaryColor, // Set the color to white
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    titleProfile("General"),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: screenWidth * 0.87,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => EditProfile());
                        },
                        style: signUpStyleButton,
                        child: Text(
                          "Edit Profile",
                          style: btnsignup,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: screenWidth * 0.87,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => PrivacyPage());
                        },
                        style: signUpStyleButton,
                        child: Text(
                          "Privacy Policy",
                          style: btnsignup,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    btnLogout(context,profileController)
                  ],
                ),
              ),
            )
          ],
        )));
  }
}
