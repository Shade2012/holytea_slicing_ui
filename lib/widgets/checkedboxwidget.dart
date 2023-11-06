// import 'package:flutter/material.dart';
// import 'package:holytea_slicing_ui/utils/themes.dart';

// class CheckedBox extends StatefulWidget {
//   @override
//   _CheckedBoxState createState() => _CheckedBoxState();
// }

// class _CheckedBoxState extends State<CheckedBox> {
//   bool isChecked = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child: Theme(
//             data: Theme.of(context).copyWith(
//               unselectedWidgetColor: primaryColor
//             ),
//             child: CheckboxListTile(
//               title: Text("tittle"),
//               subtitle: Text("subTitle"),
//                   value: isChecked,
//                   onChanged: (value) {
//             setState(
//               () {
//                 isChecked = value!;
//               },
//             );
//                   },
//                   activeColor: primaryColor,
//                   checkColor: Colors.white,
//                 ),
//           )),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:holytea_slicing_ui/utils/themes.dart';

class CustomCheckbox extends StatefulWidget {
  final String title;
  final String subTitle;

  CustomCheckbox({required this.title, required this.subTitle});

  @override
  CustomCheckboxState createState() => CustomCheckboxState();
}

class CustomCheckboxState extends State<CustomCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        unselectedWidgetColor: primaryColor,
      ),
      child: CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        title: Text(
          widget.title,
          style: contentTextVer2Bl,
        ),
        subtitle: Text(
          widget.subTitle,
          style: contentTextGrey,
        ),
        value: isChecked,
        onChanged: (value) {
          setState(
            () {
              isChecked = value!;
            },
          );
        },
        activeColor: primaryColor,
        checkColor: Colors.white,
      ),
    );
  }
}
