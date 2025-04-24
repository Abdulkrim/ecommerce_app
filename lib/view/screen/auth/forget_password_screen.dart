import 'package:ecommerce_app/controller/auth/foget_password_controller.dart';
import 'package:ecommerce_app/controller/auth/signup_controller.dart';
import 'package:ecommerce_app/core/constant/app_color.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_button_auth.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_text_body.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_text_form_field_auth.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_text_signin_or_signup.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_text_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        title: Text(
          "Forget Password",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        child: ListView(
          children: [
            CustomTextTitleAuth(text: "Forget Password"),
            SizedBox(
              height: 10,
            ),
            CustomTextBody(
                text:
                    "Sign Up With Email And Password OR Continue With Socail Media"),
            SizedBox(
              height: 10,
            ),
            CustomTextFormFieldAuth(
              hintText: "Enter Your Email",
              lable: "Email",
              iconData: Icons.email_outlined,
              myController: controller.emailController,
            ),
            CustomButtonAuth(
              text: 'Check',
              onPressed: () {},
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
