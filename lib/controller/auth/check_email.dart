import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/core/constant/routesname.dart';

abstract class CheckEmailController extends GetxController{
  checkEmail();
  gotToVerfiyCodeSignUp();
}
class CheckEmailControllerImp extends CheckEmailController{  
  late TextEditingController email;
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  @override
  checkEmail() {

  }
  
  @override
  gotToVerfiyCodeSignUp() {    
    var formdate = formState.currentState;
    if (formdate!.validate()) {
      print("Validetor");    
      Get.offAllNamed(AppRouts.VerfiyCodeSignUp);
    }
    else{
      print("Not Validet");
    }
  }
  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}