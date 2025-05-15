import 'package:ecommerce_app/controller/forget_password/success_reset_password_controller.dart';
import 'package:ecommerce_app/core/constant/app_color.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_button_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessResetPasswordScreen extends StatelessWidget {
  const SuccessResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller = SuccessResetPasswordControllerImp();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        title: Text(
          "32".tr,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Center(
            child: Icon(
              Icons.check_circle_outline_outlined,
              size: 200,
              color: AppColor.primaryColor,
            ),
          ),
          Text("37".tr,style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontSize: 30),),
          Text("36".tr),
          Spacer(),
          SizedBox(
            width: double.infinity,
            child: CustomButtonAuth(
                text: '31'.tr,
                onPressed: () {
                 controller.goToLoginPage();
                },
              ),
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