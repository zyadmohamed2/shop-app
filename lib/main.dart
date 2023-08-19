import 'package:flutter/material.dart';
import 'package:shop/core/constant/colors.dart';
import 'package:shop/core/constant/routs.dart';
import 'package:shop/core/localization/changedlocal.dart';
import 'package:shop/core/localization/translation.dart';
import 'package:shop/core/services/servic.dart';
import 'package:shop/view/binding.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServiecs();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override 
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      initialBinding: MyBinding(),
      translations: MyTranslation(),
      title: 'Flutter Demo',
      locale: controller.language,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
          headline2: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
          bodyText1: TextStyle(
                  height: 2, 
                  color: AppColor.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 15
                ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: getPages,
    );
  } 
}