import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holytea_slicing_ui/utils/themes.dart';
import 'package:holytea_slicing_ui/controller/controller_counter.dart';

class CounterWidget extends StatelessWidget {
  final CounterController controller = Get.put(CounterController());
  final void Function(int) onChanged; // Callback to handle value changes

  CounterWidget({required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          FloatingActionButton(
            onPressed: () {
              controller.subtract();
              onChanged(controller.value.value); // Notify parent when value changes
            },
            backgroundColor: bgColor,
            mini: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Icon(
                Icons.remove,
                color: primaryColor,
              ),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Obx(
                () => Text(
              '${controller.value}',
              style: primaryTextBl,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            onPressed: () {
              controller.add();
              onChanged(controller.value.value); // Notify parent when value changes
            },
            backgroundColor: primaryColor,
            mini: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Icon(
                Icons.add,
                color: primaryTextColor,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
