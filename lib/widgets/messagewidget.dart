import 'package:flutter/material.dart';
import 'package:holytea_slicing_ui/model/messagemodel.dart';
import 'package:holytea_slicing_ui/utils/themes.dart';
import 'package:get/get.dart';

Widget ChatWidget({
  required String profilePicture,
  required String name,
  required String subTitle,
  required String date,
}) {
  return Column(
    children: [
      Container(
        // color: Colors.amber,
        height: 70,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 20),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(profilePicture),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(name, style: contentTextVer2Bl),
                Container(
                  width: 200,
                  child: Text(
                    subTitle,
                    style: contentTextVer2Grey,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            Spacer(), // Use Spacer widget to push the date text to the right
            Text(date),
          ],
        ),
      ),
      SizedBox(
        height: 5,
      ),
      Divider(
        color: colorText,
        thickness: 2,
      ),
    ],
  );
}
