import 'package:ecommerce_app/controller/forget_password/foget_password_controller.dart';
import 'package:ecommerce_app/core/constant/app_color.dart';
import 'package:ecommerce_app/core/functions/valid_inpuy.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_button_auth.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_text_body.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_text_form_field_auth.dart';
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
          "14".tr,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        child: Form(
          key: controller.formState,
          child: ListView(
            children: [
              CustomTextTitleAuth(text: "27".tr),
              SizedBox(
                height: 10,
              ),
              CustomTextBody(
                  text: "29".tr),
              SizedBox(
                height: 10,
              ),
              CustomTextFormFieldAuth(
                type: TextInputType.emailAddress,
                validator: (val) {
                   return validInput(val!, 5, 100, "email");
                },
                hintText: "12".tr,
                lable: "18".tr,
                iconData: Icons.email_outlined,
                myController: controller.emailController,
              ),
              CustomButtonAuth(
                text: '30'.tr,
                onPressed: () {
                  controller.checkEmail();
                },
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
