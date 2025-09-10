import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_project/core/theme/app_colors.dart';
import 'package:medical_project/core/theme/app_styles.dart';

class CreateAnAccountWidget extends StatelessWidget {
  const CreateAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        50.verticalSpace,
        Text(
          'Create Account',
          style: AppStyles.f32bold.copyWith(color: AppColors.primaryColor),
        ),
        8.verticalSpace,
        Text(
          'Sign up now and start exploring all that our app has to offer. We re excited to welcome you to our community!',
          style: AppStyles.f16normal,
        ),
        36.verticalSpace,
      ],
    );
  }
}
