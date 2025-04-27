import 'package:ecommerce_app/core/constant/app_route.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  goRestPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {

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
