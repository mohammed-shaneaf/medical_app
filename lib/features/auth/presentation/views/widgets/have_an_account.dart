import 'package:flutter/material.dart';
import 'package:medical_project/core/routing/router_name.dart';
import 'package:medical_project/core/theme/app_colors.dart';
import 'package:medical_project/core/theme/app_styles.dart';

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, RouterName.signin);
      },
      child: Text.rich(
        TextSpan(
          text: 'Already have an account? ',
          style: AppStyles.f16normal,
          children: [
            TextSpan(
              text: 'Sign in',
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
