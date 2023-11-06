import 'package:flutter/material.dart';
import 'package:holytea_slicing_ui/utils/themes.dart';
import 'package:holytea_slicing_ui/widgets/popupwidget.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () {
            showCustomModal(
                context); // Call the function to open the custom modal
          },
          height: 50,
          minWidth: 200, // You can adjust the width as needed
          color: primaryColor,
          child: const Text(
            "Open",
            style: TextStyle(color: primaryTextColor),
          ),
        ),
      ),
    );
  }
}
