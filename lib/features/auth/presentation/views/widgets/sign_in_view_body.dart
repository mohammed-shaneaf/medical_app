import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_project/common/widgets/custom_text_form_field.dart';
import 'package:medical_project/core/theme/app_colors.dart';
import 'package:medical_project/core/theme/app_styles.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          36.verticalSpace,
          CustomTextFormField(hintText: 'Email', obscureText: false),
          16.verticalSpace,
          CustomTextFormField(hintText: 'Password', obscureText: true),
          16.verticalSpace,
          Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(value: false, onChanged: (value) {}),
              Text('Remember me', style: AppStyles.f16normal),

              const Spacer(),
              Text(
                'Forgot Password?',
                style: AppStyles.f16normal.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
