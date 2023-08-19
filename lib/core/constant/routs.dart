import 'package:shop/core/constant/routesname.dart';
import 'package:shop/core/middleware/mymiddleware.dart';
import 'package:shop/view/screen/auth/forget_password/forgetpassword.dart';
import 'package:shop/view/screen/auth/forget_password/resstpassword.dart';
import 'package:shop/view/screen/auth/language.dart';
import 'package:shop/view/screen/auth/login.dart';
import 'package:shop/view/screen/auth/signup.dart';
import 'package:shop/view/screen/auth/forget_password/verfiycode.dart';
import 'package:shop/view/screen/auth/verfiycodesignup.dart';
import 'package:shop/view/screen/onboarding.dart';
import 'package:shop/view/screen/auth/forget_password/success.dart';
import 'package:shop/view/screen/auth/success_signup.dart';
import 'package:get/get.dart';
List<GetPage<dynamic>>? getPages = [
  GetPage(name: "/", page: () => Language(),middlewares: [MyMiddleware()]),
  GetPage(name: AppRouts.LogIn, page: () => LogIn(),),
  GetPage(name: AppRouts.OnBoarding, page: () => const OnBoarding(),),
  GetPage(name: AppRouts.ForgetPassword, page: () => ForgetPassword(),),
  GetPage(name: AppRouts.resetpassword, page: () => Resetpassword(),),
  GetPage(name: AppRouts.VerfiyCode, page: () => VerfiyCode(),),
  GetPage(name: AppRouts.SuccessResetPassword, page: () => const SuccessResetPassword(),),
  GetPage(name: AppRouts.SuccsesSignUp, page: () => const SuccsesSignUp(),),
  GetPage(name: AppRouts.VerfiyCodeSignUp, page: () => VerfiyCodeSignUp(),),
  GetPage(name: AppRouts.SignUp, page: () => SignUp(),),
];