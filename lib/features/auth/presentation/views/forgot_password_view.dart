import 'package:flutter/material.dart';
import 'package:medical_project/core/constants/app_pading.dart';
import 'package:medical_project/core/utils/custom_button.dart';
import 'package:medical_project/features/auth/presentation/views/widgets/forgot_password_view_body.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: AppPadding.bottom,
        child: CustomButton(text: 'Reset Password', onPressed: () {}),
      ),
      body: SafeArea(child: const ForgotPasswordViewBody()),
    );
  }
}
