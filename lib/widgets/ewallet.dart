import 'package:flutter/material.dart';

import '../utils/themes.dart';

Widget eWallet() {
  return Container(
    width: 370,
    height: 120,
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 78, 138, 109),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          height: 80,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7),
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 28,top: 5,bottom: 3),
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Icon(Icons.account_balance_wallet),
                    Text(
                      "E-Wallet",
                      style: contentTextVer3,
                    )
                  ],
                ),
              ),
              Text("Rp 10.000,00",style: contentTextVer3)
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 40,left: 40),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 5),
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(Icons.arrow_upward,size: 20,)),
              Text("Pay",style: contentTextVer4)
              //pay
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 40,left: 30),
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(bottom: 5),
                width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(Icons.attach_money,size: 23,)),
              Text("Top up",style: contentTextVer4)
              //top up
            ],
          ),
        )
      ],
    ),
  );
}
