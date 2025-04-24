import 'package:ecommerce_app/core/constant/app_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  goRestPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {

  @override
  goRestPassword() {
    Get.offNamed(AppRoute.resetPassword);
  }

  @override
  checkCode() {}

  @override
  void onInit() {

    super.onInit();
  }

}
