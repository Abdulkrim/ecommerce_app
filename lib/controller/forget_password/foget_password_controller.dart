import 'package:ecommerce_app/core/class/status_request.dart';
import 'package:ecommerce_app/core/constant/app_route.dart';
import 'package:ecommerce_app/core/functions/handling_data_controller.dart';
import 'package:ecommerce_app/data/data_source/remote/forget_password/check_email_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  checkEmail();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  late TextEditingController emailController;
  StatusRequest? statusRequest;
  CkeckEmailData ckeckEmailData = CkeckEmailData(Get.find());
  GlobalKey<FormState> formState = GlobalKey();


  @override
  checkEmail() async {
    FormState? formData = formState.currentState;

    if (formData!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await ckeckEmailData.postData(
        email: emailController.text,
      );
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status']) {
          Get.toNamed(AppRoute.verfiyCode, arguments: {"email": emailController.text});
        }
      } else {
        Get.defaultDialog(title: "Warning", middleText: 'Email Not Found');
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
    emailController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }
}
