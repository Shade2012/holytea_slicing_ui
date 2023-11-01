import 'package:flutter/material.dart';
import 'package:holytea_slicing_ui/utils/themes.dart';

Widget ChatWidgets(
    {required alignment,
    required color,
    required String text,
    required textStyle}) {
  return Align(
    alignment: alignment,
    child: Container(
      // height: 60,
      width: 250,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: primaryColor, // Set the border color here
          width: 4, // Set the border width here
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    ),
  );
}
