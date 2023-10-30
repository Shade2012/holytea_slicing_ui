import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holytea_slicing_ui/utils/themes.dart';
import 'package:holytea_slicing_ui/views/signup_login.dart';

Widget titleProfile(String text) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Text(
      text,
      style: subHeaderText,
    ),
  );
}

Widget contentProfile(String text) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Text(
      text,
      style: TextStyle(
        fontSize: 16,
        color: secondaryColor,
      ),
    ),
  );
}

Widget btnProfile(context, link) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.87,
    child: ElevatedButton(
      onPressed: () {
        Get.to(() => link());
      },
      style: signUpStyleButton,
      child: Text(
        "Edit Profile",
        style: btnsignup,
      ),
    ),
  );
}

Widget btnLogout(context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.87,
    child: ElevatedButton(
      onPressed: () {
        Get.off(() => Sign_upLoginPage());
      },
      style: signUpStyleButton,
      child: Text(
        "Logout",
        style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.w700,
            fontSize: figmaFontsize(24)),
      ),
    ),
  );
}
