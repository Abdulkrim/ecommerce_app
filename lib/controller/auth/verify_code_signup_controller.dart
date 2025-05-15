import 'package:ecommerce_app/core/class/status_request.dart';
import 'package:ecommerce_app/core/constant/app_route.dart';
import 'package:ecommerce_app/core/functions/handling_data_controller.dart';
import 'package:ecommerce_app/data/data_source/remote/auth/verify_code_data.dart';

import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  goSuccessSignUp(String verificationCode);
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  VerifyCodeData verifyCodeData = VerifyCodeData(Get.find());
  StatusRequest? statusRequest;
  String? email;
  @override
  goSuccessSignUp(verificationCode) async{
    statusRequest = StatusRequest.loading;
      update();
      var response = await verifyCodeData.postData(verifyCode:verificationCode ,email: email!);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status']) {
          Get.offAllNamed(AppRoute.successSignUp);
        }
      } else {
        Get.defaultDialog(
            title: "Warning", middleText: 'Verify Code Not Correct');
        statusRequest = StatusRequest.failure;
      }
      update();
    
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }
}
