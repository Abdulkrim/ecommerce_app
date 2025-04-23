import 'package:ecommerce_app/controller/login/signup_controller.dart';
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
          "Sign Up",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        child: ListView(
          children: [
            CustomTextTitleAuth(text: "Welcome Back"),
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
              hintText: "Enter Your Username",
              lable: "Username",
              iconData: Icons.person_3_outlined, myController: controller.usernameController,
            ),
            CustomTextFormFieldAuth(
              hintText: "Enter Your Email",
              lable: "Email",
              iconData: Icons.email_outlined, myController: controller.emailController,
            ),
            CustomTextFormFieldAuth(
              hintText: "Enter Your Phone",
              lable: "Phone",
              iconData: Icons.phone_android_outlined, myController: controller.phoneController,
            ),
            CustomTextFormFieldAuth(
              hintText: "Enter Your Password",
              lable: "Password",
              iconData: Icons.lock_clock_outlined, myController: controller.passwordController,
            ),
            Text(
              "Forget Password",
              textAlign: TextAlign.end,
            ),
            CustomButtonAuth(
              text: 'Sign In',
              onPressed: () {},
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextSigninOrSignup(
              textOne: "have an account ? ",
              textTwo: "Sign In",
              onTap: controller.goToSignIn,
            ),
          ],
        ),
      ),
    );
  }
}
