import 'package:get/get.dart';
import 'package:holytea_slicing_ui/views/firstpage.dart';
import 'package:holytea_slicing_ui/views/homepage.dart';
import 'package:holytea_slicing_ui/views/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SplashController extends GetxController{
late final SharedPreferences prefs;
@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkSharedPrefrence();
  }
void checkSharedPrefrence()async{
prefs = await SharedPreferences.getInstance();
Future.delayed(Duration(seconds: 2),(){
  if(prefs.getString('username') == null || prefs.getString('pass') == null ){
    Get.off(() => FirstPage());
  }else{
    Get.off(() => HomePage());
  }
});
}
}
