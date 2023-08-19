import 'package:flutter/material.dart';
import 'package:shop/core/constant/image_asset.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppImageAsse.LogoAuth, height: 170,);
  }
}