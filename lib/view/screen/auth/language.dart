import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/core/constant/routesname.dart';
import 'package:shop/core/localization/changedlocal.dart';
import 'package:shop/view/widget/language/buttom.dart';


class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "1".tr,
              style: Theme.of(context).textTheme.headline1
            ),
            const SizedBox(height: 30,),
            CustomButtomLanguage(
              onPressed: () {
                controller.changeLang("ar");
                Get.toNamed(AppRouts.OnBoarding);
              },
              textButtom: "Ar",
            ),
            CustomButtomLanguage(
              onPressed: () {
                controller.changeLang("en");
                Get.toNamed(AppRouts.OnBoarding);
              },
              textButtom: "En",
            )
          ],
        ),
      ),
    );
  }
}