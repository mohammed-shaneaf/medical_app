import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_project/core/utils/custom_button.dart';
import 'package:medical_project/features/auth/presentation/logic/manager/sign_up_cubit/sign_up_cubit.dart';
import 'package:medical_project/features/auth/presentation/views/widgets/create_account_widget.dart';
import 'package:medical_project/features/auth/presentation/views/widgets/email_password_phone_widget.dart';
import 'package:medical_project/features/auth/presentation/views/widgets/have_an_account.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final signupcubit = context.read<SignUpCubit>();
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CreateAnAccountWidget(),
            EmailPasswordPhoneWidget(),
            CustomButton(
              text: 'Create Account',
              onPressed: () {
                if (signupcubit.formKey.currentState!.validate()) {
                  signupcubit.emitSignupState();
                }
              },
            ),
            30.verticalSpace,
            HaveAnAccount(),
            16.verticalSpace,
          ],
        ),
      ),
    );
  }
}
