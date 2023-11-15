import 'package:flutter/material.dart';
import '../model/model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;


class HolyteaController extends GetxController{
  RxBool isLoading = false.obs;
  RxList<HolyteaModel> holytea = <HolyteaModel>[].obs;
  RxInt selectedIndex = RxInt(0);
  RxList<HolyteaModel> displayedData = <HolyteaModel>[].obs;


  @override
  void onInit() {
    // TODO: implement onInit
    fetchProduct();
    super.onInit();
  }
  void fetchProduct() async {
    isLoading.value = true;
    try{
      final response = await http.get (
          Uri.parse('https://holytea-api.000webhostapp.com/api/data')

         // Adjust the duration as needed

    ).timeout(Duration(seconds: 10));
      if(response.statusCode == 200){
        holytea.value = holyteaModelFromJson(response.body);
        displayedData.assignAll(holytea);
        isLoading.value = false;
      }else{
        print('Error:  ${response.statusCode}');
      }
    }catch(e){
      print(e);
    }
  }
  void updateSelectedIndex(int index) {
    if (selectedIndex.value != index) {
      // Reset the previous selection
      selectedIndex.value = index;
    } else {
      // Deselect the current selection
      selectedIndex.value = -1;
    }
  }
}

