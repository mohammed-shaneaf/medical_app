import 'package:flutter/material.dart';
import 'package:medical_project/core/utils/app_images.dart';

class OnBoardingTopSection extends StatelessWidget {
  const OnBoardingTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [Image.asset(Assets.assetsImagesLogo)],
    );
  }
}
