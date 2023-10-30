import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:image_picker/image_picker.dart';


class ProfilepageController extends GetxController{
  var  selectedImagePath ="".obs;
  late final SharedPreferences prefs;
  RxString ctrUsername = "".obs;
  RxString ctrEmail = "".obs;
  RxString ctrPhone = "".obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkSharedPreference();
  }
  void getImage(ImageSource imageSource) async{

    final pickedFile = await ImagePicker().pickImage(source: imageSource);
    if(pickedFile != null){
      selectedImagePath.value = pickedFile.path;
      await prefs.setString('image',selectedImagePath.value);
    }else {
      Get.snackbar('Error', 'Tidak ada gambar yang dipilih',snackPosition: SnackPosition.BOTTOM,backgroundColor: Colors.red,colorText: Colors.white);
    }
  }
  void checkSharedPreference() async {
    prefs = await SharedPreferences.getInstance();
    selectedImagePath.value = prefs.getString('image')!;
    ctrUsername.value = prefs.getString('username')!;
    ctrEmail.value = prefs.getString('email')!;
    ctrPhone.value = prefs.getString('phone')!;
    print("aadawdaw "+ctrUsername.value);
  }

}

