import 'package:ecommerce_app/core/constant/app_color.dart';
import 'package:ecommerce_app/view/wiget/auth/custom_button_auth.dart';
import 'package:flutter/material.dart';

class SuccessResetPasswordScreen extends StatelessWidget {
  const SuccessResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        title: Text(
          "Success",
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
          Text("...."),
          Text("...."),
          Spacer(),
          SizedBox(
            width: double.infinity,
            child: CustomButtonAuth(
                text: 'Go To Login',
                onPressed: () {
                 
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