import 'package:ecommerce_app/core/constant/app_route.dart';
import 'package:ecommerce_app/view/screen/auth/login_screen.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => LoginScreen(),
};
