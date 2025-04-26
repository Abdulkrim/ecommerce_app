import 'package:ecommerce_app/core/constant/app_color.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
          fontFamily: "PlayfairDisplay",
          textTheme: TextTheme(
            headlineSmall: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: AppColor.black,
            ),
            headlineMedium:TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: AppColor.black,
            ),
            bodyLarge: TextStyle(
              height: 2,
              color: AppColor.grey,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
            bodySmall: TextStyle(
              height: 2,
              color: AppColor.grey,
              fontSize: 14,
            ),
          ),
          primarySwatch: Colors.blue,
        );


        ThemeData themeArabic = ThemeData(
          fontFamily: "Cairo",
          textTheme: TextTheme(
            headlineSmall: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: AppColor.black,
            ),
            headlineMedium:TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: AppColor.black,
            ),
            bodyLarge: TextStyle(
              height: 2,
              color: AppColor.grey,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
            bodySmall: TextStyle(
              height: 2,
              color: AppColor.grey,
              fontSize: 14,
            ),
          ),
          primarySwatch: Colors.blue,
        );