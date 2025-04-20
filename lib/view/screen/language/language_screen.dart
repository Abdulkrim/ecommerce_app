import 'package:ecommerce_app/core/constant/app_route.dart';
import 'package:ecommerce_app/core/localization/change_local.dart';
import 'package:ecommerce_app/view/wiget/language/custom_button_lang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LanguageScreen extends GetView<LocalController> {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "1".tr,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(
              height: 20,
            ),
            CustomButtonLang(
              textButton: "Ar",
              onPressed: () {
                controller.changeLang("ar");
                Get.toNamed(AppRoute.onBoarding);
              }
            ),
            CustomButtonLang(
              textButton: "En",
              onPressed: () {
                controller.changeLang("en");
                Get.toNamed(AppRoute.onBoarding);
              },
            ),
          ],
        ),
      ),
    );
  }
}
