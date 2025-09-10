import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_project/common/widgets/custom_text_form_field.dart';
import 'package:medical_project/core/utils/custom_button.dart';
import 'package:medical_project/features/auth/presentation/views/widgets/create_account_widget.dart';
import 'package:medical_project/features/auth/presentation/views/widgets/dont_have_an_account.dart';
import 'package:medical_project/features/auth/presentation/views/widgets/phone_text_field.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CreateAnAccountWidget(),
          CustomTextFormField(hintText: 'Email', obscureText: false),
          16.verticalSpace,
          CustomTextFormField(hintText: 'Password', obscureText: true),
          16.verticalSpace,
          PhoneTextField(),
          32.verticalSpace,
          CustomButton(text: 'Create Account', onPressed: () {}),
          30.verticalSpace,
          DontHaveAnAccount(),
          16.verticalSpace,
        ],
      ),
    );
  }
}
