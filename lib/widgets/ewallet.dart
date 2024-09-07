import 'package:flutter/material.dart';

import '../utils/themes.dart';

Widget eWallet() {
  return Container(
    margin: EdgeInsets.only(top: 20),
    child: Row(
      children: [
        Container(
          child: InkWell(
            child: Image.asset(wallet),
          ),
        ),
        Container(
          height: 80,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7),
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30,top: 5,bottom: 3),
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Text(
                      "Rp 157.000,00",
                      style: newcontentTextVer3,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30,),
                child: Row(
                  children: [
                    Text(
                      "E-wallet",
                      style: newcontentTextVer03,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 80),
          height: 80,
          child: Row(
            children: [
              Container(
                  margin: EdgeInsets.only(bottom: 5),
                width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(Icons.motorcycle,size:35,color: Colors.grey,)),
              Container(
                  margin: EdgeInsets.only(bottom: 5,),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Icon(Icons.looks_one,size:17,color: Colors.red,)),
            ],
          ),
        )
      ],
    ),
  );
}
