import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_project/common/widgets/custom_text_form_field.dart';
import 'package:medical_project/core/theme/app_colors.dart';
import 'package:medical_project/core/theme/app_styles.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          50.verticalSpace,
          Text(
            'Forgot Password',
            style: AppStyles.f32bold.copyWith(color: AppColors.primaryColor),
          ),
          8.verticalSpace,
          Text(
            'At our app, we take the security of your information seriously.',
            style: AppStyles.f16normal,
          ),
          36.verticalSpace,
          CustomTextFormField(
            hintText: 'Email Or Phone Number',
            obscureText: false,
          ),
        ],
      ),
    );
  }
}
