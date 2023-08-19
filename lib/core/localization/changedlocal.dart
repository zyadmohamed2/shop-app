import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/core/services/servic.dart';

class LocaleController extends GetxController{
  Locale? language;
  MyServic myServic = Get.find();
  changeLang(String langcode){
    Locale locale = Locale(langcode);
    myServic.sharedPreferences.setString('langcode', langcode);
    Get.updateLocale(locale);
  }
  @override
  void onInit() {
    if(myServic.sharedPreferences.getString("langcode") == "ar"){
      language = const Locale("ar");
    }
    else if(myServic.sharedPreferences.getString("loangcode") == "en"){
      language = Locale("en");
    }
    else{
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}