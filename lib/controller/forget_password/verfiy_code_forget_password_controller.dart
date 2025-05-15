import 'package:ecommerce_app/core/constant/app_route.dart';
import 'package:get/get.dart';

abstract class VerfiyCodeForgetPasswordController extends GetxController {
  checkCode();
  goRestPassword();
}

class VerifyCodeControllerImp extends VerfiyCodeForgetPasswordController {

  @override
  goRestPassword() {
    Get.offAllNamed(AppRoute.resetPassword);
  }

  @override
  checkCode() {}

  @override
  void onInit() {

    super.onInit();
  }

}
