import 'package:ecommerce_app/core/constant/app_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController{
  login();
  goToSignUp();
}

class LoginControllerImp extends LoginController{
  late TextEditingController emailController;
  late TextEditingController passwordController;
  @override
  goToSignUp() {
   Get.offNamed(AppRoute.signUp);
  }

  @override
  login() {
    
  }

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

}