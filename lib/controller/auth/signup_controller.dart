import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/core/constant/routesname.dart';

abstract class SignUpController extends GetxController{
  signUp();
  goToSignIn();
  showPassword();
}
class SignUpControllerImp extends SignUpController{  
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password; 
  GlobalKey<FormState> formState = GlobalKey<FormState>();
    bool isShowPassword = true;
  @override
  showPassword() {
    isShowPassword = !isShowPassword;
    update();
  }
  @override
  signUp() {
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
  goToSignIn() {
    Get.offAllNamed(AppRouts.LogIn);
  }
  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }
}