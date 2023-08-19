import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/core/constant/routesname.dart';

abstract class ForgetPasswordController extends GetxController{
  checkEmail();
  goToVerfiyCode();
}
class ForgetPasswordControllerImp extends ForgetPasswordController{  
  late TextEditingController email;
  GlobalKey<FormState> formState1 = GlobalKey<FormState>();
  @override
  checkEmail() {

  }
  
  @override
  goToVerfiyCode() {    
    var formdate = formState1.currentState;
    if (formdate!.validate()) {
      print("Validetor");    
      Get.offAllNamed(AppRouts.VerfiyCode);

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