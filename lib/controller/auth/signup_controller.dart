import 'package:ecommerce_app/core/constant/app_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignupController extends GetxController {
  signUp();
  goToSignIn();
}

class SignupControllerImp extends SignupController {
  late TextEditingController emailController;
  late TextEditingController usernameController;
  late TextEditingController phoneController;
  late TextEditingController passwordController;
  @override
  goToSignIn() {
    Get.offNamed(AppRoute.logIn);
  }

  @override
  signUp() {
    Get.offNamed(AppRoute.checkEmail);
  }

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    usernameController = TextEditingController();
    phoneController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    usernameController.dispose();
    phoneController.dispose();
    super.dispose();
  }
}
