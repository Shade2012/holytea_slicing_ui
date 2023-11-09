import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holytea_slicing_ui/views/button.dart';
import 'package:holytea_slicing_ui/views/chatpage.dart';
import 'package:holytea_slicing_ui/views/messagelist.dart';
import 'package:holytea_slicing_ui/views/firstpage.dart';
import 'package:holytea_slicing_ui/views/homepage.dart';

import 'package:holytea_slicing_ui/views/locationpage.dart';
import 'package:holytea_slicing_ui/views/menupage.dart';
import 'package:holytea_slicing_ui/views/privacypage.dart';
import 'package:holytea_slicing_ui/views/profilepage.dart';
import 'package:holytea_slicing_ui/views/signup.dart';
import 'package:holytea_slicing_ui/views/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Menupage(),
    );
  }
}
