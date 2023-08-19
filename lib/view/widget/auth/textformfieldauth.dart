import 'package:flutter/material.dart';
import 'package:shop/core/constant/colors.dart';

class CustomTextFormAuth extends StatelessWidget {
  const CustomTextFormAuth({
    super.key,
    required this.hintText, 
    required this.label,
    required this.icons,
    required this.mycontroller,
    required this.validator, required this.isNumber,
    this.obscureText = false,
    this.onTap
    });
  final String? Function(String?)? validator;
  final String hintText;
  final String label;
  final IconData icons;
  final TextEditingController? mycontroller;
  final bool isNumber;
  final bool obscureText;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      child: TextFormField(
        // ignore: unnecessary_null_comparison
        obscureText: obscureText,
        keyboardType: isNumber? const TextInputType.numberWithOptions(decimal: true): TextInputType.text,
        validator: validator,
        controller: mycontroller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30)
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          label: Text(label),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: GestureDetector(
            onTap: onTap,
            child: Icon(icons),
          ),
          focusColor: AppColor.primaryColor,
          hoverColor: AppColor.primaryColor,
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 14,
          )
        ),
      ),
    );
  }
}