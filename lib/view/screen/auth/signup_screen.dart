import 'package:ecommerce_app/controller/auth/signup_controller.dart';
import 'package:ecommerce_app/core/constant/app_color.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_button_auth.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_text_body.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_text_form_field_auth.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_text_signin_or_signup.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_text_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SignupControllerImp controller = Get.put(SignupControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        title: Text(
          "17".tr,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        child: ListView(
          children: [
            CustomTextTitleAuth(text: "10".tr),
            SizedBox(
              height: 10,
            ),
            CustomTextBody(
                text:
                    "24".tr),
            SizedBox(
              height: 10,
            ),
            CustomTextFormFieldAuth(
              hintText: "23".tr,
              lable: "20".tr,
              iconData: Icons.person_3_outlined, myController: controller.usernameController,
            ),
            CustomTextFormFieldAuth(
              hintText: "12".tr,
              lable: "18".tr,
              iconData: Icons.email_outlined, myController: controller.emailController,
            ),
            CustomTextFormFieldAuth(
              hintText: "22".tr,
              lable: "21".tr,
              iconData: Icons.phone_android_outlined, myController: controller.phoneController,
            ),
            CustomTextFormFieldAuth(
              hintText: "13".tr,
              lable: "19".tr,
              iconData: Icons.lock_clock_outlined, myController: controller.passwordController,
            ),
            CustomButtonAuth(
              text: '17'.tr,
              onPressed: () {
                controller.signUp();
              },
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextSigninOrSignup(
              textOne: "25".tr,
              textTwo: "26".tr,
              onTap: controller.goToSignIn,
            ),
          ],
        ),
      ),
    );
  }
}
