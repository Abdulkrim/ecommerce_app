import 'package:ecommerce_app/core/constant/app_route.dart';
import 'package:ecommerce_app/view/screen/auth/forget_password_screen.dart';
import 'package:ecommerce_app/view/screen/auth/login_screen.dart';
import 'package:ecommerce_app/view/screen/auth/reset_password_screen.dart';
import 'package:ecommerce_app/view/screen/auth/signup_screen.dart';
import 'package:ecommerce_app/view/screen/auth/verify_code_screen.dart';
import 'package:ecommerce_app/view/screen/on_boarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  // auth
  AppRoute.logIn: (context) => LogInScreen(),
  AppRoute.signUp: (context) => SignUpScreen(),
  AppRoute.forgetPassword: (context) => ForgetPasswordScreen(),
  AppRoute.verfiyCode: (context) => VerifyCodeScreen(),
  AppRoute.resetPassword: (context) => ResetPasswordScreen(),
  // on boarding
  AppRoute.onBoarding: (context) => OnBoardingScreen(),
};
