import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/controller/onboarding_controller.dart';
import 'package:shop/core/constant/colors.dart';
import 'package:shop/data/datasource/static/static.dart';

class CustomDotController extends StatelessWidget {
  const CustomDotController({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      builder: (controller) {
        return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
            ...List.generate(
              onBoardingList.length, 
              (index) {
                return AnimatedContainer(
                  margin: const EdgeInsets.only(right: 5),
                  duration: const Duration(milliseconds: 900),
                  width: controller.curentPage == index ? 20: 6, 
                  height: 6,
                  decoration:  BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(10)
                  ),
                );
              },
            )
          ],
        );
      },
    );
  }
}