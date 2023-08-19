import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/controller/auth/signup_controller.dart';
import 'package:shop/core/constant/colors.dart';
import 'package:shop/core/functions/alertexit.dart';
import 'package:shop/core/functions/validinput.dart';
import 'package:shop/view/widget/auth/buttom.dart';
import 'package:shop/view/widget/auth/textbodyauth.dart';
import 'package:shop/view/widget/auth/textformfieldauth.dart';
import 'package:shop/view/widget/auth/texttitleauth.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: alertExitApp,
        child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text("2".tr, style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey)),
        ),
        body: GetBuilder<SignUpControllerImp>(
          builder: (controller) {
            return Form(
              key: controller.formState,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                child: ListView(
                  children: [
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
                        return validInput(val!, 3, 30, "username");
                      },
                      hintText: "Enter Your Username", 
                      label: "Username",
                      icons: Icons.person, 
                      mycontroller: controller.username,
                    ),
                    CustomTextFormAuth(
                      isNumber: false,
                      validator: (val) {
                        return validInput(val!, 3, 50, "email");
                      },
                      hintText: "Enter Your Email", 
                      label: "Email",
                      icons: Icons.email_outlined,
                      mycontroller: controller.email,
                    ),
                    CustomTextFormAuth(
                      isNumber: true,
                      validator: (val) {
                        return validInput(val!, 3, 30, "phone");
                      },
                      hintText: "Enter Your Phone", 
                      label: "Phone",
                      icons: Icons.phone,
                      mycontroller: controller.phone,
                    ),
                    GetBuilder<SignUpControllerImp>(
                      builder: (controller) {
                        return CustomTextFormAuth(
                          onTap: () {
                            controller.showPassword();
                          },
                          obscureText: controller.isShowPassword,
                          isNumber: false,
                          validator: (val) {
                            return validInput(val!, 3, 30, "password");
                          },
                          hintText: "Enter Your Password", 
                          label: "Password", 
                          icons: controller.isShowPassword? Icons.lock_outline : Icons.remove_red_eye_outlined,
                          mycontroller: controller.password,
                        );
                      },
                    ),
                    const SizedBox(height: 30,),
                    CustomButtomAuth(
                      onPressed: () {
                        controller.signUp();
                      },
                      text: "Sign Up",
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        const Text("Have an account ? "),
                        GestureDetector(
                          onTap: () {
                            controller.goToSignIn();
                          },
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                              color: AppColor.primaryColor, 
                              fontWeight: FontWeight.bold
                            )
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        )
      ),
    );
  }
}