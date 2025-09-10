import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_project/core/routing/router_name.dart';
import 'package:medical_project/core/theme/app_colors.dart';
import 'package:medical_project/core/theme/app_styles.dart';

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        6.horizontalSpace,
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, RouterName.forgotPassword);
          },
          child: Text(
            'Forgot Password?',
            style: AppStyles.f16normal.copyWith(color: AppColors.primaryColor),
          ),
        ),
        45.verticalSpace,
      ],
    );
  }
}
