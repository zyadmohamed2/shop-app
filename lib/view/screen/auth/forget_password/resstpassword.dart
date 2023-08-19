import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/controller/auth/resetpassword_controller.dart';
import 'package:shop/core/constant/colors.dart';
import 'package:shop/core/functions/validinput.dart';
import 'package:shop/view/widget/auth/buttom.dart';
import 'package:shop/view/widget/auth/textformfieldauth.dart';
import 'package:shop/view/widget/auth/texttitleauth.dart';

class Resetpassword extends StatelessWidget {
  Resetpassword({super.key});
  @override
  Widget build(BuildContext context) {
    resetpasswordControllerImp controller = Get.put(resetpasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("New Password", style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey)),
      ),
      body: Form(
        key: controller.formState,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
          child: ListView(
            children: [
              const CustomTextTitle(
                text: "plesse Enter New Password",
              ),
              GetBuilder<resetpasswordControllerImp>(
                builder: (controller) {
                  return Row(
                    children: [
                      CustomTextFormAuth(
                        onTap: () {
                          controller.showPassword();
                        },
                        obscureText: controller.isShowPassword,
                        isNumber: false,
                        validator: (val) {
                          return validInput(val!, 4, 30, "password");
                        },
                        hintText: "Enter Your Password", 
                        label: "pajssword",
                        icons: controller.isShowPassword? Icons.lock_outline : Icons.remove_red_eye_outlined,
                        mycontroller: controller.password,
                      ),
                      const SizedBox(height: 15,),
                      CustomTextFormAuth(
                        onTap: () {
                          controller.showPassword();
                        },
                        obscureText: controller.isShowPassword,
                        isNumber: false,
                        validator: (val) {
                          return validInput(val!, 4, 30, "password");
                        },
                        hintText: "Re Enter Your Password", 
                        label: "re Password",
                        icons: controller.isShowPassword? Icons.lock_outline : Icons.remove_red_eye_outlined,
                        mycontroller: controller.repassword,
                      )
                    ],
                  );
                },
              ),
              const SizedBox(height: 15,),
              CustomButtomAuth(
                onPressed: () {
                  controller.goToSuccessResetPassword();
                },
                text: "Save",
              ),
            ],
          ),
        ),
      ),
    );
  }
}