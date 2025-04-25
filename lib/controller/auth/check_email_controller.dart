import 'package:ecommerce_app/core/constant/app_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CheckEmailController extends GetxController {
  checkEmail();
  goSuccessSignUp();
}

class CheckEmailControllerImp extends CheckEmailController {
  late TextEditingController emailController;

  @override
  goSuccessSignUp() {
    Get.toNamed(AppRoute.successSignUp);
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
