import 'package:flutter/material.dart';
import 'package:shop/controller/onboarding_controller.dart';
import 'package:shop/view/widget/onboarding/buttom.dart';
import 'package:shop/view/widget/onboarding/dotscontroller.dart';
import 'package:shop/view/widget/onboarding/slider.dart';
import 'package:get/get.dart';
class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: CustomSliderOnBoarding()
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  CustomDotController(),
                  Spacer(flex: 2,),
                  CustomButtom()
                ],
              ),
              
            )
          ],
        ),
      ),
    );
  }
}