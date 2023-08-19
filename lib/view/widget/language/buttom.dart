import 'package:flutter/material.dart';
import 'package:shop/core/constant/colors.dart';

class CustomButtomLanguage extends StatelessWidget {
  CustomButtomLanguage({super.key, required this.textButtom, this.onPressed});
  final String textButtom;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsets.symmetric(horizontal: 100),
              width: double.infinity,
              child: MaterialButton(
                color: AppColor.primaryColor,
                onPressed: onPressed, 
                child: Text(
                  textButtom,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                )
              ),
            );
  }
}