import 'package:ecommerce_app/core/constant/app_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CheckEmailController extends GetxController {
  checkEmail();
  goVerfyCodeSignUp();
}

class CheckEmailControllerImp extends CheckEmailController {
  late TextEditingController emailController;

  @override
  goVerfyCodeSignUp() {
    Get.toNamed(AppRoute.verfiyCodeSignUp);
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
