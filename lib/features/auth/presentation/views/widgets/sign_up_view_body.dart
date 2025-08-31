import 'package:flutter/material.dart';
import 'package:flutter_intl_phone_field/flutter_intl_phone_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_project/common/widgets/custom_text_form_field.dart';
import 'package:medical_project/core/routing/router_name.dart';
import 'package:medical_project/core/theme/app_colors.dart';
import 'package:medical_project/core/theme/app_styles.dart';
import 'package:medical_project/core/utils/custom_button.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          CustomTextFormField(hintText: 'Email', obscureText: false),
          16.verticalSpace,
          CustomTextFormField(hintText: 'Password', obscureText: true),
          16.verticalSpace,
          IntlPhoneField(
            initialCountryCode: 'SY',
            decoration: InputDecoration(
              fillColor: AppColors.grayColor,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.r),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.r),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.r),
                borderSide: BorderSide(color: Theme.of(context).primaryColor),
              ),
            ),
          ),

          32.verticalSpace,
          CustomButton(text: 'Create Account', onPressed: () {}),
          16.verticalSpace,
          GestureDetector(
            onTap: () {},
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RouterName.signin);
              },
              child: Text.rich(
                TextSpan(
                  text: 'Don\'t have an account? ',
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
            ),
          ),
        ],
      ),
    );
  }
}
