import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

import '../controller/controller_splashscreen.dart';
import '../utils/themes.dart';

class Splashscreen extends StatelessWidget {
  SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
                image: AssetImage(image_logo_holytea),
              width: 300,
            ),
            SizedBox(
              height: 50,
            ),
            SpinKitDualRing(
                color: Colors.green,
              size: 50,
            )
          ],
        ),
      ),
    );
  }
}
