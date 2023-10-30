// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:holytea_slicing_ui/utils/themes.dart';
import 'package:get/get.dart';
import 'package:holytea_slicing_ui/views/privacypage.dart';
import 'package:holytea_slicing_ui/widgets/profilepagewidget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          title: Title(
            color: Colors.white,
            child: Center(
              child: Text(
                "My Profile",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        body: Center(
            child: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .05,
            ),
            Container(
              //ini ntar ganti foto
              height: MediaQuery.sizeOf(context).height * .18,
              width: MediaQuery.sizeOf(context).height * .18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.amber,
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .03,
            ),
            Text("Username", style: primaryTextBl),
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
                  titleProfile("Email"),
                  SizedBox(
                    height: 8,
                  ),
                  contentProfile("damar@gmail.com"),
                  SizedBox(
                    height: 20,
                  ),
                  titleProfile("Phone"),
                  SizedBox(
                    height: 8,
                  ),
                  contentProfile("00047707407"),
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
                        Get.to(() => PrivacyPage());
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
                  btnLogout(context)
                ],
              ),
            ))
          ],
        )));
  }
}
