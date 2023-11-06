// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holytea_slicing_ui/utils/themes.dart';
import 'package:holytea_slicing_ui/controller/controller_counter.dart';

Widget CounterWidget() {
  final CounterController controller = Get.put(CounterController());

  return Container(
    child: Row(
      children: [
        FloatingActionButton(
          onPressed: () {
            controller.subtract();
          },
          backgroundColor: bgColor,
          mini: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Icon(
              Icons.remove,
              color: primaryColor,
            ),
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Obx(
          () => Text(
            '${controller.value}',
            style: primaryTextBl,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        FloatingActionButton(
          onPressed: () {
            controller.add();
          },
          backgroundColor: primaryColor,
          mini: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Icon(
              Icons.add,
              color: primaryTextColor,
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
      ],
    ),
  );
}
