import 'package:ecommerce_app/core/services/services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{}
class HomeControllerImp extends HomeController{
  MyServices myServices = Get.find();
  String? username;

 void initialData() {
  username = myServices.sharedPreferences.getString("username");
 }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }

}