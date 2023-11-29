import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holytea_slicing_ui/views/login.dart';
import 'package:holytea_slicing_ui/views/profilepage.dart';
import 'package:holytea_slicing_ui/views/signup_login.dart';
import 'package:holytea_slicing_ui/views/splashscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:image_picker/image_picker.dart';

import 'controllerLogin_Register.dart';


class ProfilepageController extends GetxController {
  final CtrDataUser ctrDataUser = Get.put(CtrDataUser());
  var selectedImagePath = "".obs;
  late final SharedPreferences prefs;
  RxString ctrUsername = "".obs;
  RxString ctrEmail = "".obs;
  RxString ctrPhone = "".obs;

  @override
  void onInit() {
    super.onInit();

    checkSharedPreference();
  }

  void getImage(ImageSource imageSource) async {
    final pickedFile = await ImagePicker().pickImage(source: imageSource);
    if (pickedFile != null) {
      selectedImagePath.value = pickedFile.path;
      await prefs.setString('image', selectedImagePath.value);
    } else {
      Get.snackbar(
        'Error',
        'Tidak ada gambar yang dipilih',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }
  void editprofile(String username,String email,String phone) async{
    ctrUsername.value = username;
    ctrEmail.value = email;
    ctrPhone.value = phone;

    await prefs.setString('username', ctrUsername.value);
    await prefs.setString('email', ctrEmail.value);
    await prefs.setString('phone', ctrPhone.value);
    Get.snackbar("Congratulation", "Data berhasil dirubah");
    Get.off(() => ProfilePage());
  }

  void checkSharedPreference() async {
    prefs = await SharedPreferences.getInstance();

    if (prefs != null) {
      selectedImagePath.value = prefs.getString('image') ?? '';
      ctrUsername.value = prefs.getString('username') ?? '';
      ctrEmail.value = prefs.getString('email') ?? '';
      ctrPhone.value = prefs.getString('phone') ?? '';
    }
  }

  void logOut() async {
    await prefs.clear();
    Get.off(() => LoginPage());
  }
}


