import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shop/core/constant/routesname.dart';
import 'package:shop/core/services/servic.dart';
class MyMiddleware extends GetMiddleware{
  MyServic myServic = Get.find();
  @override
  int? get priority => 1;
  @override
  RouteSettings? redirect(String? route) {
    if (myServic.sharedPreferences.getString("onboarding") == "1") {
      return const RouteSettings(name: AppRouts.LogIn);
    }
  }
}