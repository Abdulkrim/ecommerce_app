import 'package:ecommerce_app/core/class/status_request.dart';
import 'package:ecommerce_app/core/constant/app_route.dart';
import 'package:ecommerce_app/core/functions/handling_data_controller.dart';
import 'package:ecommerce_app/data/data_source/remote/auth/signup_data.dart';
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
  GlobalKey<FormState> formState = GlobalKey();
  bool isHiddenPassword = true;

  StatusRequest? statusRequest;
  SignupData signupData = SignupData(Get.find());

  List data = [];

  @override
  goToSignIn() {
    Get.offNamed(AppRoute.logIn);
  }

  @override
  signUp() async {
    FormState? formData = formState.currentState;
    if (formData!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await signupData.postData(
          username: usernameController.text,
          password: passwordController.text,
          email: emailController.text,
          phone: phoneController.text);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status']) {
          Get.offNamed(AppRoute.verfiyCodeSignUp,
              arguments: {"email": emailController.text});
        }
      } else {
        Get.defaultDialog(
            title: "Warning", middleText: 'Phone Or Email Already Existing');
        statusRequest = StatusRequest.failure;
      }
      update();
    } else {
      print("Not Valid");
    }
  }

  showPassword() {
    isHiddenPassword = isHiddenPassword == true ? false : true;
    update(); 
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
