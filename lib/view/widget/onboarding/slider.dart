import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/controller/onboarding_controller.dart';
import 'package:shop/data/datasource/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp>{
  const CustomSliderOnBoarding({super.key});
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChenged(value);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Text(
              onBoardingList[index].title!,
              style: Theme.of(context).textTheme.headline1
            ),
            const SizedBox(height: 50,),
            Image.asset(onBoardingList[index].image!),
            const SizedBox(height: 40,),
            Container(
              width: double.infinity, 
              alignment: Alignment.center,
              child: Text(
                onBoardingList[index].body!,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText1
              )
            ),
          ],
        );
      },
    );
  }
}