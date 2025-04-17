import 'package:ecommerce_app/core/constant/app_color.dart';
import 'package:ecommerce_app/data/data_source/static/static.dart';
import 'package:ecommerce_app/view/wiget/on_boarding/custom_button.dart';
import 'package:ecommerce_app/view/wiget/on_boarding/custom_dot_controller.dart';
import 'package:ecommerce_app/view/wiget/on_boarding/custom_slider.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: 
              CustomSliderOnBoarding(),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  CustomDotControllerOnBoarding(),
                  Spacer(),
                  CustomButtonOnBoarding(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
