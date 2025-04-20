import 'package:ecommerce_app/core/constant/app_color.dart';
import 'package:ecommerce_app/core/localization/translation.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:ecommerce_app/routes.dart';
import 'package:ecommerce_app/view/screen/language/language_screen.dart';
import 'package:ecommerce_app/view/screen/on_boarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: MyTranslation(),
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
              fontSize: 14,
            ),
          ),
          primarySwatch: Colors.blue,
        ),
        routes: routes,
        home: OnBoardingScreen(),
        //  LanguageScreen(),
        );
  }
}
