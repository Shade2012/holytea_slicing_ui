import 'package:flutter/material.dart';
import 'package:holytea_slicing_ui/utils/themes.dart';
import 'package:holytea_slicing_ui/widgets/checkedboxwidget.dart';
import 'package:holytea_slicing_ui/widgets/counterwidget.dart';
import 'package:holytea_slicing_ui/widgets/loveWidget.dart';

class MyCustomPopUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.93,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: primaryTextColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            Container(
              // width: MediaQuery.sizeOf(context).width * .9,
              height: MediaQuery.sizeOf(context).height * .4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: primaryColor),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Drink name",
                  style: primaryTextBl,
                ),
                Transform.scale(
                  scale: 1,
                  child: FavoriteIcon(),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CounterWidget(),
                Text(
                  "Rp xx.xxx,00",
                  style: contentTextVer2Grey,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Add a toping?",
                style: primaryTextBl,
              ),
            ),
            CustomCheckbox(
              title: "Pearl",
              subTitle: "Subtitle Text",
            ),
            CustomCheckbox(title: "Extra ice", subTitle: "subTitle"),
            CustomCheckbox(title: "Less ice", subTitle: "subTitle"),
            Container(
              // ini button belum di style yah
              height: 60,
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Add to cart"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

void showCustomModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true, // Allow content to be taller than the screen
    builder: (context) => MyCustomPopUp(),
  );
}
