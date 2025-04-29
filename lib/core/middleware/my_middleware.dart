import 'package:ecommerce_app/core/constant/app_route.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMiddleware extends GetMiddleware {
  MyServices myServices = Get.find();

  @override
  int? priority = 1;

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString("onBoarding") == "1") {
      return RouteSettings(name: AppRoute.logIn);
    } else {
      return null;
    }
  }
}
