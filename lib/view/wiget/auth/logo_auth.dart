import 'package:ecommerce_app/core/constant/app_image_asset.dart';
import 'package:flutter/material.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppImageAsset.logo,height: 170,);
  }
}