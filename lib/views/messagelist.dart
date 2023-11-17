// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:holytea_slicing_ui/model/messagemodel.dart';
import 'package:holytea_slicing_ui/utils/themes.dart';
import 'package:holytea_slicing_ui/views/cartpage.dart';
import 'package:holytea_slicing_ui/views/chatpage.dart';
import 'package:holytea_slicing_ui/widgets/messagewidget.dart';
import 'package:get/get.dart';

import 'homepage.dart';
import 'menupage.dart';

class MessageList extends StatelessWidget {
  const MessageList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Title(
          color: Colors.white,
          child: Center(
            child: Text(
              "Message",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Your messages",
                style: primaryTextBl,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: chatProfiles.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        Get.to(() => ChatPage());
                      },
                      child: Column(
                        children: [
                          ChatWidget(
                            profilePicture: chatProfiles[index].profilePicture,
                            name: chatProfiles[index].name,
                            subTitle: chatProfiles[index].subTitle,
                            date: chatProfiles[index].date,
                          ),
                          SizedBox(
                            height: 5,
                          )
                        ],
                      ));
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Get.off(() => HomePage());
              },
              icon: Icon(Icons.home, color: colorText),
            ),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: IconButton(
                onPressed: () {
                  Get.off(() => Menupage());
                },
                icon: Icon(Icons.menu_book, color: colorText),
              ),
            ),
            label: "menu",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Get.off(() => CartPage());
              },
              icon: Icon(Icons.shopping_cart_outlined, color: colorText),
            ),
            label: "cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message, color: Colors.green),
            label: "chat",
          ),
        ],
        showSelectedLabels: false,
      ),
    );
  }
}
