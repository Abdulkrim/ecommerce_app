  
import 'package:ecommerce_app/controller/forget_password/verfiy_code_forget_password_controller.dart';
import 'package:ecommerce_app/core/class/handling_data_view.dart';
import 'package:ecommerce_app/core/constant/app_color.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_text_body.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_text_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifyCodeScreen extends StatelessWidget {
  const VerifyCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerifyCodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        title: Text(
          "40".tr,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        child: GetBuilder<VerifyCodeControllerImp>(
           builder: (controller) => HandlingDataRequest(
            statusRequest: controller.statusRequest,
             widget: ListView(
              children: [
                CustomTextTitleAuth(text: "41".tr),
                SizedBox(
                  height: 10,
                ),
                CustomTextBody(
                    text:
                        "42".tr),
                SizedBox(
                  height: 10,
                ),
                OtpTextField(
                  fieldWidth: 50,
                  borderRadius: BorderRadius.circular(20),
                  numberOfFields: 5,
                  borderColor: Color(0xFF512DA8),
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    controller.goRestPassword(verificationCode);
                  }, // end onSubmit
                ),
                SizedBox(
                  height: 30,
                ),
              ],
                       ),
           ),
        ),
      ),
    );
  }
}
