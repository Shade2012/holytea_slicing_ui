
import 'package:get/get.dart';

import '../model/model.dart';

class CounterController extends GetxController {

  RxInt quantity = 1.obs;
  RxInt totalPrice = 0.obs;



  void add() {
    quantity.value++;
  }
  void reset() {
    quantity.value = 1; // Reset the value to 1
  }
  void subtract() {
    if(quantity.value  > 0){
      quantity.value--;
    }


  }
}
