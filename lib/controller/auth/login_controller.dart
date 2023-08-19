import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/core/constant/routesname.dart';
import 'package:shop/view/screen/auth/forget_password/forgetpassword.dart';

abstract class LogInController extends GetxController{
  login();
  goToSignUp();
  goToForgetPassword();
  showPassword();
}
class LogInControllerImp extends LogInController{  
  late TextEditingController email;
  late TextEditingController password; 
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  bool isShowPassword = true;
  @override
  login() {
    var formdate = formState.currentState;
    if (formdate!.validate()) {
      print("Validate");
    }
    else{
      print("Not Validate");
    }
  }
  
  @override
  goToSignUp() {
    Get.offAllNamed(AppRouts.SignUp);
  }
  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
  
  @override
  goToForgetPassword() {
    Get.to(ForgetPassword());
  }
  
  @override
  showPassword() {
    isShowPassword = !isShowPassword;
    update();
  }
}