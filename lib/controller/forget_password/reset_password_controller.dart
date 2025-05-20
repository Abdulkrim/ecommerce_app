import 'package:ecommerce_app/core/class/status_request.dart';
import 'package:ecommerce_app/core/constant/app_route.dart';
import 'package:ecommerce_app/core/functions/handling_data_controller.dart';
import 'package:ecommerce_app/data/data_source/remote/forget_password/reset_password_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  goSuccessRestPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController passwordController;
  late TextEditingController rePasswordController;
 StatusRequest? statusRequest = StatusRequest.none;
 RestPasswordData restPasswordData =RestPasswordData(Get.find());
 String? email;
  GlobalKey<FormState> formState = GlobalKey();

  @override
  goSuccessRestPassword() async {
    if (passwordController.text != rePasswordController.text) {
      return Get.defaultDialog(
        title: "Warning", middleText: "Password Not Matched"
      );
    }

    FormState? formData = formState.currentState;
    if (formData!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await restPasswordData.postData(
        email: email!,
        password: passwordController.text,
      );
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status']) {
         Get.offNamed(AppRoute.successRestPassword);
        }
      } else {
        Get.defaultDialog(
            title: "Warning", middleText: 'Try Agin');
        statusRequest = StatusRequest.failure;
      }
      update();
      print("Valid");
      
    } else {
      print("Not Valid");
    }
  }


  @override
  void onInit() {
    email = Get.arguments['email'];
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
