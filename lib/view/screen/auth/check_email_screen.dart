import 'package:ecommerce_app/controller/auth/check_email_controller.dart';
import 'package:ecommerce_app/core/constant/app_color.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_button_auth.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_text_body.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_text_form_field_auth.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_text_title_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckEmailScreen extends StatelessWidget {
  const CheckEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller = Get.put(CheckEmailControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        title: Text(
          "Check Email",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        child: ListView(
          children: [
            CustomTextTitleAuth(text: "Check Your Email "),
            SizedBox(
              height: 10,
            ),
            CustomTextBody(
                text:
                    "Please Enter Your Email Address To Recivre A Verification Code"),
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
              onPressed: () {
                controller.goSuccessSignUp();
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
