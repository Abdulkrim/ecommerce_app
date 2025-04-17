import 'package:ecommerce_app/core/constant/app_color.dart';
import 'package:ecommerce_app/data/data_source/static/static.dart';
import 'package:flutter/material.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          onBoardingList.length,
          (index) => AnimatedContainer(
            margin: EdgeInsets.only(right: 5),
            duration: Duration(microseconds: 900),
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
