// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holytea_slicing_ui/utils/themes.dart';
import 'package:holytea_slicing_ui/widgets/chatbar.dart';
import 'package:holytea_slicing_ui/widgets/chatwidget.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
            color: primaryTextColor,
          ),
        ),
        title: Title(
          color: primaryTextColor,
          child: Center(
            child: Text(
              "Chat: Pay",
              style: TextStyle(
                  color: primaryTextColor, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.all(30),
              // color: primaryColor,
              height: MediaQuery.sizeOf(context).height * .5,
              width: MediaQuery.sizeOf(context).width,
              child: Column(
                children: [
                  ChatWidgets(
                      alignment: Alignment.topRight,
                      color: primaryColor,
                      text: "Sudah sampai dimana pak?",
                      textStyle: secondaryText),
                  SizedBox(
                    height: 20,
                  ),
                  ChatWidgets(
                      alignment: Alignment.topLeft,
                      color: primaryTextColor,
                      text: "Sudah sampai dimana pak?",
                      textStyle: secondaryTextBl)
                ],
              ),
            ),
            Align(alignment: Alignment.bottomCenter, child: ChatBar(context))
          ],
        ),
      ),
    );
  }
}
