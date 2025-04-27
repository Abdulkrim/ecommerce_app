import 'package:ecommerce_app/core/constant/app_route.dart';
import 'package:get/get.dart';

abstract class SuccessSignUpController extends GetxController{
  goToLoginPage();
}

class SuccessSignUpControllerImp extends SuccessSignUpController{
  @override
  goToLoginPage() {
   Get.offAllNamed(AppRoute.logIn);
  }

}