// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:holytea_slicing_ui/utils/themes.dart';

Widget ChatBar(context) {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      color: primaryColor,
      height: MediaQuery.sizeOf(context).height * .08,
      width: MediaQuery.sizeOf(context).width,
      child: Row(
        children: [
          Icon(
            Icons.camera_alt_outlined,
            size: 40,
            color: primaryTextColor,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: primaryTextColor, // Set the background color to white
                  borderRadius:
                      BorderRadius.circular(10), // Set the border radius
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Type a message...',
                    border: InputBorder.none,
                    prefix: Padding(
                      padding: EdgeInsets.only(
                          left: 20), // Adjust the left padding as needed
                    ),
                  ),
                ),
              ),
            ),
          ),
          Transform.rotate(
            angle: -45 * 3.14159265 / 180, // Set the rotation angle in radians

            child: Icon(
              Icons.send,
              size: 35,
              color: primaryTextColor,
            ),
          ),
        ],
      ));
}
// Row(
//       children: [Icon(Icons.camera), TextField(), Icon(Icons.send)],
//     ),