// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:holytea_slicing_ui/model/messagemodel.dart';
import 'package:holytea_slicing_ui/utils/themes.dart';
import 'package:holytea_slicing_ui/widgets/messagewidget.dart';

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
                  return Column(
                    children: [
                      ChatWidget(
                          profilePicture: chatProfiles[index].profilePicture,
                          name: chatProfiles[index].name,
                          subTitle: chatProfiles[index].subTitle,
                          date: chatProfiles[index].date,
                          path: chatProfiles[index].path),
                      SizedBox(
                        height: 5,
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
