import 'package:flutter/material.dart';
import 'package:medical_project/core/constants/app_pading.dart';
import 'package:medical_project/core/utils/custom_button.dart';
import 'package:medical_project/features/auth/presentation/views/widgets/sign_in_view_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: AppPadding.bottom,
        child: CustomButton(text: 'Get Started', onPressed: () {}),
      ),
      body: SafeArea(child: const SignInViewBody()),
    );
  }
}
