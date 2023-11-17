// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holytea_slicing_ui/utils/themes.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

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
            color: Colors.white,
          ),
        ),
        title: Title(
          color: Colors.white,
          child: Center(
            child: Text(
              "Order",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Pesanan sedang dalam perjalanan",
                style: btnsignup,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              // height: MediaQuery.sizeOf(context).height * .1,
              decoration: BoxDecoration(
                  color: bgColor, borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Informasi Pengiriman",
                          style: contentTextVer2Bl,
                        )),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "●  Pesanan sedang dikirim oleh driver",
                        style: contentText,
                      ),
                    ),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "07-06-2023 13:27",
                          style: contentText,
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Column(children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Alamat Pengiriman",
                      style: contentTextVer2Bl,
                    )),
                Text(
                  "Jalan Sukun Raya No.09, Besito Kulon, Besito, Kec. Gebog, Kabupaten Kudus, Jawa Tengah 59333",
                  style: TextStyle(
                      color: colorText,
                      fontSize: figmaFontsize(14),
                      fontWeight: FontWeight.w500),
                )
              ]),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(25),
              width: MediaQuery.sizeOf(context).width,
              // height: MediaQuery.sizeOf(context).height * .5,
              decoration: BoxDecoration(
                  color: bgColor, borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
                        width: 100,
                        height: 125,
                        // color: Colors.lime,
                        decoration: BoxDecoration(
                            image:
                                DecorationImage(image: AssetImage(dark_choco))),
                      ),
                      SizedBox(
                        height: 100,
                        width: MediaQuery.sizeOf(context).width * .525,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Dark Choco",
                                  style: contentTextVer2Bl,
                                ),
                                Text(
                                  "x1",
                                  style: contentTextVer2Bl,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [Text("Harga"), Text("Rp10.000")],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [Text("Ongkir"), Text("Rp2.000")],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Pesanan",
                        style: contentTextVer2Bl,
                      ),
                      Text(
                        "Rp12.000",
                        style: contentTextVer2Bl,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Metode Pembayaran",
                        style: contentTextVer2Bl,
                      )),
                  SizedBox(
                    height: 8,
                  ),
                  Align(
                      alignment: Alignment.topLeft, child: Text("Mobile BCA")),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ID Pesanan",
                        style: contentTextVer2Bl,
                      ),
                      Text(
                        "238FH84K21",
                        style: contentTextVer2Bl,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Waktu Pemesanan"), Text("238FH84K21")],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Waktu Pembayaran"), Text("238FH84K21")],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Waktu Pembuatan"), Text("238FH84K21")],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Waktu Pengiriman"), Text("238FH84K21")],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Waktu pesanan Diterima"),
                      Text("238FH84K21")
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
