import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/class/status_request.dart';
import 'package:ecommerce_app/core/constant/app_route.dart';
import 'package:ecommerce_app/core/functions/handling_data_controller.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:ecommerce_app/data/data_source/remote/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  GlobalKey<FormState> formState = GlobalKey();
  bool isHiddenPassword = true;
  StatusRequest? statusRequest = StatusRequest.none;
  LoginData loginData = LoginData(Get.find());
  MyServices myServices = Get.find();

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signUp);
  }

  @override
  login() async {
    FormState? formData = formState.currentState;
    if (formData!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postData(
        password: passwordController.text,
        email: emailController.text,
      );
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status']) {
          myServices.sharedPreferences.setInt("id", response['data']['id']);
          myServices.sharedPreferences.setString("username", response['data']['username']);
          myServices.sharedPreferences.setString("email", response['data']['email']);
          myServices.sharedPreferences.setString("phone", response['data']['phone']);
          myServices.sharedPreferences.setString("step", "2");
          Get.offNamed(AppRoute.homescreen,);
        }
      } else {
        Get.defaultDialog(
            title: "Warning", middleText: 'Password Or Email Not Correct');
        statusRequest = StatusRequest.failure;
      }
      update();
      print("Valid");
    } else {
      print("Not Valid");
    }
  }

  showPassword() {
    isHiddenPassword = isHiddenPassword == true ? false : true;
    update(id(["password"]));
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

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }
}
