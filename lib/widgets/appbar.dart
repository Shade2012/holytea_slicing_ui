import 'package:flutter/material.dart';
import 'package:holytea_slicing_ui/utils/themes.dart';

Widget AppBarWidget(BuildContext context, String title) {
  return Container(
    color: primaryColor,
    height: MediaQuery.of(context).size.height * .07,
    child: Row(
      children: [
        InkWell(
          onTap: () {},
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * .38),
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    ),
  );
}
