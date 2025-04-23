import 'package:ecommerce_app/core/constant/app_color.dart';

import 'package:flutter/material.dart';


class CustomTextSigninOrSignup extends StatelessWidget {
  const CustomTextSigninOrSignup({super.key, required this.textOne, required this.textTwo, required this.onTap});
  final String textOne;
  final String textTwo;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(textOne),
                InkWell(
                  onTap: onTap,
                  child: Text(textTwo,style: TextStyle(color: AppColor.primaryColor,fontWeight: FontWeight.bold),
                ),
            ),
            ],
            );
  }
}