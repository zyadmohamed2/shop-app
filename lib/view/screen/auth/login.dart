import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/controller/auth/login_controller.dart';
import 'package:shop/core/constant/colors.dart';
import 'package:shop/core/constant/routesname.dart';
import 'package:shop/core/functions/alertexit.dart';
import 'package:shop/core/functions/validinput.dart';
import 'package:shop/view/widget/auth/buttom.dart';
import 'package:shop/view/widget/auth/logoauth.dart';
import 'package:shop/view/widget/auth/textbodyauth.dart';
import 'package:shop/view/widget/auth/textformfieldauth.dart';
import 'package:shop/view/widget/auth/textsignup.dart';
import 'package:shop/view/widget/auth/texttitleauth.dart';

class LogIn extends StatelessWidget {
  LogIn({super.key});
  @override
  Widget build(BuildContext context) {
    LogInControllerImp controller = Get.put(LogInControllerImp());
    return WillPopScope(
      onWillPop: alertExitApp,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text("2".tr, style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey)),
        ),
        body: Form(
          key: controller.formState,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
            child: ListView(
              children: [
                const LogoAuth(),
                CustomTextTitle(
                  text: "3".tr,
                ),
                const SizedBox(height: 10,),
                CustomTextBodyAuth(
                  text: "4".tr,
                ),
                CustomTextFormAuth(
                  isNumber: false,
                  validator: (val) {
                    return validInput(val!, 5, 80, "email");
                  },
                  hintText: "Enter Your Email", 
                  label: "Email",
                  icons: Icons.email_outlined, 
                  mycontroller: controller.email,
                ),
                GetBuilder<LogInControllerImp>(
                  builder: (controller) {
                    return CustomTextFormAuth(
                      onTap: () {
                        controller.showPassword();
                      },
                      obscureText: controller.isShowPassword,
                      isNumber: false,
                      validator: (val) {
                        return validInput(val!, 4, 30, "password");
                      },
                      hintText: "Enter Your Password",
                      label: "Password",
                      icons: controller.isShowPassword? Icons.lock_outline : Icons.remove_red_eye_outlined,
                      mycontroller: controller.password,
                    );
                  },
                ),
                const SizedBox(height: 10,),
                GestureDetector(
                  onTap: () {
                    controller.goToForgetPassword();
                  },
                  child: const Text(
                    "forgat my password?",
                    textAlign: TextAlign.right,
                  ),
                ),
                const SizedBox(height: 30,),
                CustomButtomAuth(
                  onPressed: () {
                    controller.login();
                  },
                  text: "Sign In",
                ),
                const SizedBox(height: 20,),
                CustomTextSignUp(
                  text: "Don't Have account ? ", 
                  texttwo: "Sign Up",
                  onPressed: () {
                    Get.toNamed(AppRouts.SignUp);
                  },
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}