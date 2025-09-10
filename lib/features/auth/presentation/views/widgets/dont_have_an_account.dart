import 'package:flutter/material.dart';
import 'package:medical_project/core/routing/router_name.dart';
import 'package:medical_project/core/theme/app_colors.dart';
import 'package:medical_project/core/theme/app_styles.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, RouterName.signup);
      },
      child: Text.rich(
        TextSpan(
          text: 'Don\'t have an account? ',
          style: AppStyles.f16normal,
          children: [
            TextSpan(
              text: 'Sign up',
              style: AppStyles.f16normal.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
