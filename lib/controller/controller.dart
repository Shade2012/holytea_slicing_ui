
import '../model/model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;


class HolyteaController extends GetxController{
  RxBool isLoading = false.obs;
  RxList<HolyteaModel> holytea = <HolyteaModel>[].obs;


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
      );
      if(response.statusCode == 200){
        holytea.value = holyteaModelFromJson(response.body);
        isLoading.value = false;
      }else{
        print('Error:  ${response.statusCode}');
      }
    }catch(e){
      print(e);
    }
  }
}
