import 'package:ecommerce_app/core/constant/app_theme.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalController extends GetxController {
  Locale? language;
  ThemeData appTheme =themeEnglish; 

  MyServices myServices = Get.find();

  changeLang(String langeCode) {
    Locale locale = Locale(langeCode);
    myServices.sharedPreferences.setString("lang", langeCode);
    appTheme = langeCode =="ar" ?themeArabic:themeEnglish;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    if (sharedPrefLang == "ar") {
      language = Locale("ar");
      appTheme = themeArabic;
    } else if (sharedPrefLang == "en") {
      language = Locale("en");
      appTheme = themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      appTheme = themeEnglish;
    }
    super.onInit();
  }
}
