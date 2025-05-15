import 'package:ecommerce_app/core/constant/app_route.dart';
import 'package:ecommerce_app/core/middleware/my_middleware.dart';
import 'package:ecommerce_app/view/screen/forget_password/forget_password_screen.dart';
import 'package:ecommerce_app/view/screen/auth/login_screen.dart';
import 'package:ecommerce_app/view/screen/forget_password/reset_password_screen.dart';
import 'package:ecommerce_app/view/screen/auth/signup_screen.dart';
import 'package:ecommerce_app/view/screen/forget_password/success_reset_password_screen.dart';
import 'package:ecommerce_app/view/screen/auth/success_signup_screen.dart';
import 'package:ecommerce_app/view/screen/forget_password/verify_code_screen.dart';
import 'package:ecommerce_app/view/screen/auth/verify_code_signup_screen.dart';
import 'package:ecommerce_app/view/screen/home/home_screen.dart';
import 'package:ecommerce_app/view/screen/language/language_screen.dart';
import 'package:ecommerce_app/view/screen/on_boarding/onboarding_screen.dart';
import 'package:ecommerce_app/view/test/test_view.dart';
import 'package:get/get.dart';


List<GetPage<dynamic>>? routes = [
  
  // GetPage(name: AppRoute.language, page: () => TestView(),),
  GetPage(name: AppRoute.language, page: () => LanguageScreen(), middlewares:[MyMiddleware(),]),
  // on Boarding
  GetPage(name: AppRoute.onBoarding, page: () => OnBoardingScreen()),
  // Auth
  GetPage(name: AppRoute.logIn, page: () => LogInScreen()),
  GetPage(name: AppRoute.signUp, page: () => SignUpScreen()),
  GetPage(name: AppRoute.forgetPassword, page: () => ForgetPasswordScreen()),
  GetPage(name: AppRoute.verfiyCode, page: () => VerifyCodeScreen()),
  GetPage(name: AppRoute.verfiyCodeSignUp, page: () => VerifyCodeSignUpScreen()),
  GetPage(name: AppRoute.resetPassword, page: () => ResetPasswordScreen()),
  GetPage(name: AppRoute.successRestPassword, page: () => SuccessResetPasswordScreen()),
  GetPage(name: AppRoute.successSignUp, page: () => SuccessSignupScreen()),
  // Home
  GetPage(name: AppRoute.homescreen, page: () => HomeScreen()),
  
];


// Map<String, Widget Function(BuildContext)> routes = {
//   // auth
//   AppRoute.logIn: (context) => LogInScreen(),
//   AppRoute.signUp: (context) => SignUpScreen(),
//   AppRoute.forgetPassword: (context) => ForgetPasswordScreen(),
//   AppRoute.verfiyCode: (context) => VerifyCodeScreen(),
//   AppRoute.verfiyCodeSignUp: (context) => VerifyCodeSignUpScreen(),
//   AppRoute.resetPassword: (context) => ResetPasswordScreen(),
//   AppRoute.successRestPassword: (context) => SuccessResetPasswordScreen(),
//   AppRoute.successSignUp: (context) => SuccessSignupScreen(),
//   // on boarding
//   AppRoute.onBoarding: (context) => OnBoardingScreen(),
// };
