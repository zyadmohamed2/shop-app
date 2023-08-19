import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/controller/auth/fotgetpasswordcontroller.dart';
import 'package:shop/core/constant/colors.dart';
import 'package:shop/core/functions/validinput.dart';
import 'package:shop/view/widget/auth/buttom.dart';
import 'package:shop/view/widget/auth/textbodyauth.dart';
import 'package:shop/view/widget/auth/textformfieldauth.dart';
import 'package:shop/view/widget/auth/texttitleauth.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({super.key});
  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller = Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("Forget Password", style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey)),
      ),
      body: Form(
        key: controller.formState1,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
          child: ListView(
            children: [
              const CustomTextTitle(
                text: "Check Email",
              ),
              const CustomTextBodyAuth(
                text: "please Enter Your Email Address To Recive A verification code",
              ),
              CustomTextFormAuth(
                isNumber: false,
                validator: (val) {
                  return validInput(val!, 4, 30, "email");
                },
                hintText: "Enter Your Email", 
                label: "Email",
                icons: Icons.email_outlined,
                mycontroller: controller.email,
              ),
              const SizedBox(height: 30,),
              CustomButtomAuth(
                onPressed: () {
                  controller.goToVerfiyCode();
                },
                text: "Check",
              ),
            ],
          ),
        ),
      ),
    );
  }
}