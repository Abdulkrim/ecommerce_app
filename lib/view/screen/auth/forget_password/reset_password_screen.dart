import 'package:ecommerce_app/controller/auth/reset_password_controller.dart';

import 'package:ecommerce_app/core/constant/app_color.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_button_auth.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_text_body.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_text_form_field_auth.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_text_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller = Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        title: Text(
          "43".tr,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        child: ListView(
          children: [
            CustomTextTitleAuth(text: "35".tr),
            SizedBox(
              height: 10,
            ),
            CustomTextBody(text: "34".tr),
            SizedBox(
              height: 10,
            ),
            CustomTextFormFieldAuth(
              hintText: "13".tr,
              lable: "19".tr,
              iconData: Icons.lock_clock_outlined,
              myController: controller.passwordController,
            ),
            CustomTextFormFieldAuth(
              hintText: "45".tr,
              lable: "44".tr,
              iconData: Icons.lock_clock_outlined,
              myController: controller.rePasswordController,
            ),
            CustomButtonAuth(
              text: '33'.tr,
              onPressed: () {
                controller.goSuccessRestPassword();
              },
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
