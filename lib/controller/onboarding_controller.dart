import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/core/constant/routesname.dart';
import 'package:shop/core/services/servic.dart';
import 'package:shop/data/datasource/static/static.dart';
abstract class OnBoardingController extends GetxController{
  next();
  onPageChenged(int index);
}

class OnBoardingControllerImp extends OnBoardingController{
  int curentPage = 0;
  late PageController pageController;
  MyServic myServics = Get.find();
  @override
  next() {
    curentPage++;
    if(curentPage == onBoardingList.length){      
      myServics.sharedPreferences.setString('onboarding', '1');
      Get.offAllNamed(AppRouts.LogIn);
    }
    else{
      pageController.animateToPage(curentPage, duration: const Duration(milliseconds: 700), curve: Curves.ease);
    }
  }

  @override
  onPageChenged(int index) {
    curentPage = index;
    update();
  }
  @override
  onInit(){
    super.onInit();
    pageController = PageController();
  }
}