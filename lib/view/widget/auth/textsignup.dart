import 'package:flutter/material.dart';
import 'package:shop/core/constant/colors.dart';

class CustomTextSignUp extends StatelessWidget {
  const CustomTextSignUp({super.key, required this.text, required this.texttwo, this.onPressed});
  final String text;
  final String texttwo;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text),
        GestureDetector(
          onTap: onPressed,
          child: Text(
            texttwo,
            style: const TextStyle(
              color: AppColor.primaryColor, 
              fontWeight: FontWeight.bold
            )
          ),
        )
      ],
    );
  }
}