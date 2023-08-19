import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/core/constant/routesname.dart';

abstract class resetpasswordController extends GetxController{
  resetPassword();
  goToSuccessResetPassword();
  showPassword();
}
class resetpasswordControllerImp extends resetpasswordController{  
  late TextEditingController password;
  late TextEditingController repassword;
  GlobalKey<FormState> formState = GlobalKey<FormState>();
    bool isShowPassword = true;
  @override
  showPassword() {
    isShowPassword = !isShowPassword;
    update();
  }
  @override
  resetPassword() {

  }
  
  @override
  goToSuccessResetPassword() {
    
    var formdate = formState.currentState;
    if (formdate!.validate()) {
      Get.offAllNamed(AppRouts.SuccessResetPassword);   
      print("Validetor");
    }
    else{
      print("Not Validet");
    }
  }
  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}