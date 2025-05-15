import 'package:ecommerce_app/core/constant/app_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  checkEmail();
  goVerfiyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  late TextEditingController emailController;
  GlobalKey<FormState> formState = GlobalKey();
  @override
  goVerfiyCode() {
    FormState? formData = formState.currentState;
    if (formData!.validate()) {
      Get.toNamed(AppRoute.verfiyCode);
    } else {
      print("Not Valid");
    }
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
