import 'package:ecommerce_app/controller/auth/login_controller.dart';
import 'package:ecommerce_app/core/constant/app_color.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_button_auth.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_text_body.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_text_form_field_auth.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_text_signin_or_signup.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_text_title_auth.dart';
import 'package:ecommerce_app/view/wiget/auth/logo_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        title: Text(
          "26".tr,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        child: ListView(
          children: [
            LogoAuth(),
            CustomTextTitleAuth(text: "10".tr),
            SizedBox(
              height: 10,
            ),
            CustomTextBody(text: "11".tr),
            SizedBox(
              height: 10,
            ),
            CustomTextFormFieldAuth(hintText: "12".tr,lable: "18".tr,iconData: Icons.email_outlined, myController: controller.emailController,),
            CustomTextFormFieldAuth(hintText: "13".tr,lable: "19".tr,iconData: Icons.lock_clock_outlined,myController: controller.passwordController,),
            InkWell(
              onTap: controller.goToForgetPassword,
              child: Text("14".tr, textAlign: TextAlign.end,)),
            CustomButtonAuth(text: '15'.tr,onPressed: () {},),
            SizedBox(
              height: 30,
            ),
            CustomTextSigninOrSignup(textOne: "16".tr, textTwo: "17".tr,onTap: controller.goToSignUp,),
          ],
        ),
      ),
    );
  }
}
