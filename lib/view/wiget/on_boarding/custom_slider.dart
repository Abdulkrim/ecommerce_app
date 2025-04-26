import 'package:ecommerce_app/controller/on_boarding/on_boarding_controller.dart';
import 'package:ecommerce_app/core/constant/app_color.dart';
import 'package:ecommerce_app/data/data_source/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) => controller.onPageChanged(value),
      itemCount: onBoardingList.length,
      itemBuilder: (context, index) => Column(
        children: [
          Image.asset(
            onBoardingList[index].image!,
            // width: 200,
            height: Get.width / 1.5,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 80,
          ),
          Text(
            onBoardingList[index].title!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: AppColor.black,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              onBoardingList[index].body!,
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 2,
                color: AppColor.grey,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
