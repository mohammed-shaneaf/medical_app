import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_project/core/utils/custom_button.dart';
import 'package:medical_project/features/auth/presentation/views/widgets/dont_have_account_widget.dart';
import 'package:medical_project/features/auth/presentation/views/widgets/email_and_password_widget.dart';
import 'package:medical_project/features/auth/presentation/views/widgets/password_widget.dart';
import 'package:medical_project/features/auth/presentation/views/widgets/welcome_widget.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeWidget(),
            EmailAndPasswordWidget(),
            ForgotPasswordWidget(),
            CustomButton(text: 'Login', onPressed: () {}),
            16.verticalSpace,
            DontHaveAccountWidget(),
          ],
        ),
      ),
    );
  }
}
