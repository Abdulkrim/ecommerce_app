import 'package:ecommerce_app/core/constant/app_color.dart';
import 'package:ecommerce_app/routes.dart';
import 'package:ecommerce_app/view/screen/on_boarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: "PlayfairDisplay",
          textTheme: TextTheme(
            headlineSmall: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: AppColor.black,
            ),
            bodyLarge: TextStyle(
              height: 2,
              color: AppColor.grey,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          primarySwatch: Colors.blue,
        ),
        routes: routes,
        home: OnBoardingScreen());
  }
}
