import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:shop/controller/auth/verifiycode_controller.dart';
import 'package:shop/core/constant/colors.dart';
import 'package:shop/view/widget/auth/textbodyauth.dart';
import 'package:shop/view/widget/auth/texttitleauth.dart';

// ignore: must_be_immutable
class VerfiyCode extends StatelessWidget {
  VerfiyCodeControllerImp controller = Get.put(VerfiyCodeControllerImp());
  VerfiyCode({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("Verification Code", style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
        child: ListView(
          children: [
            const CustomTextTitle(
              text: "Check Code",
            ),
            SizedBox(height: 20,),
            const CustomTextBodyAuth(text: "please Enter The Digit Code Sent To"),
            OtpTextField(
              fieldWidth: 50,
              borderRadius: BorderRadius.circular(20),
              numberOfFields: 5,
              borderColor: AppColor.primaryColor,
              showFieldAsBox: true,
              onCodeChanged: (value) {
                
              },
              onSubmit: (value) {
                controller.goToResetPassword();
              },
            ),
          ],
        ),
      ),
    );
  }
}