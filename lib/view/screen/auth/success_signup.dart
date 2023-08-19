import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/controller/auth/successsignup.dart';
import 'package:shop/core/constant/colors.dart';
import 'package:shop/view/widget/auth/buttom.dart';

class SuccsesSignUp extends StatelessWidget {
  const SuccsesSignUp({super.key});
  @override
  Widget build(BuildContext context) {
    SuccsesSignUpControllerImp controller = Get.put(SuccsesSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Success",
          style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Center(
              child: Icon(
                Icons.check_circle_outline, 
                size: 200, color: 
                AppColor.primaryColor,
                ),
              ),
              Expanded(child: SizedBox(),),
              Container(
                width: double.infinity,
                child: CustomButtomAuth(
                  text: "Go To LogIn",
                  onPressed: () {
                    controller.goToLogIn();
                  },
                ),
              ),
              SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }
}