import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
class CtrDataUser extends GetxController {
  late final SharedPreferences prefs;
  final ctrUsername = RxString("");
  final ctrPassword = RxString("");
  final ctrEmail = RxString("");
  final ctrPhone = RxString("");

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

  }

  datauser(String username,String pass,String email,String phone) async{
    prefs = await SharedPreferences.getInstance();
    ctrUsername.value = username;
    ctrPassword.value = pass;
    ctrEmail.value = email;
    ctrPhone.value = phone;

    await prefs.setString('username', ctrUsername.value);
    await prefs.setString('pass', ctrPassword.value);
    await prefs.setString('email', ctrEmail.value);
    await prefs.setString('phone', ctrPhone.value);
    print(prefs.get('username'));
  }
}
