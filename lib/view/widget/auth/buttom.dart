import 'package:flutter/material.dart';
import 'package:shop/core/constant/colors.dart';

class CustomButtomAuth extends StatelessWidget {
  const CustomButtomAuth({super.key, this.onPressed, required this.text});
  final void Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
      padding: const EdgeInsets.symmetric(vertical: 20),
      onPressed: onPressed,
      color: AppColor.primaryColor,
      textColor: Colors.white,
      child: Text(text),
    );
  }
}