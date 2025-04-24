import 'package:ecommerce_app/core/constant/app_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  checkEmail();
  goVerfiyCode();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController emailController;

  @override
  goVerfiyCode() {
    Get.offNamed(AppRoute.verfiyCode);
  }

  @override
  checkEmail() {}

  @override
  void onInit() {
    emailController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }
}
