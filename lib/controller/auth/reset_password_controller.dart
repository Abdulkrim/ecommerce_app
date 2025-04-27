import 'package:ecommerce_app/core/constant/app_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();
  goSuccessRestPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController passwordController;
  late TextEditingController rePasswordController;
  GlobalKey<FormState> formState = GlobalKey();

  @override
  goSuccessRestPassword() {
    FormState? formData = formState.currentState;
    if (formData!.validate()) {
      Get.offNamed(AppRoute.successRestPassword);
    } else {
      print("Not Valid");
    }
  }

  @override
  resetPassword() {}

  @override
  void onInit() {
    passwordController = TextEditingController();
    rePasswordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    passwordController.dispose();
    rePasswordController.dispose();
    super.dispose();
  }
}
