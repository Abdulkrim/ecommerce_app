import 'package:ecommerce_app/core/constant/app_route.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkCode();
  goSuccessSignUp();
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {

  @override
  goSuccessSignUp() {
    Get.offAllNamed(AppRoute.successSignUp);
  }

  @override
  checkCode() {}

  @override
  void onInit() {

    super.onInit();
  }

}
