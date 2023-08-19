import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/controller/onboarding_controller.dart';
import 'package:shop/core/constant/colors.dart';

class CustomButtom extends GetView<OnBoardingControllerImp> {
  const CustomButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 37),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
        textColor: Colors.white,
        color: AppColor.primaryColor,
        onPressed: () {
          controller.next();
        },
        child: const Text("Continue"),
      ),
    );
  }
}