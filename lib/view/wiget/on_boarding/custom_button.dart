import 'package:ecommerce_app/core/constant/app_color.dart';
import 'package:flutter/material.dart';

class CustomButtonOnBoarding extends StatelessWidget {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: EdgeInsets.only(bottom: 30),
      child: MaterialButton(
        padding: EdgeInsets.symmetric(horizontal: 100),
        onPressed: () {},
        textColor: AppColor.white,
        color: AppColor.primaryColor,
        child: Text("Continue"),
      ),
    );
  }
}
