import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_project/core/theme/app_colors.dart';
import 'package:medical_project/core/theme/app_styles.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        50.verticalSpace,
        Text(
          'Welcome Back',
          style: AppStyles.f32bold.copyWith(color: AppColors.primaryColor),
        ),
        8.verticalSpace,
        Text(
          'We are excited to have you back, cant wait to see what you have been up to since you last logged in.',
          style: AppStyles.f16normal,
        ),
      ],
    );
  }
}
