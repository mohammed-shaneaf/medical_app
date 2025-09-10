import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_project/core/utils/custom_button.dart';
import 'package:medical_project/features/auth/presentation/logic/manager/login_cubit/login_cubit.dart';
import 'package:medical_project/features/auth/presentation/views/widgets/dont_have_an_account.dart';
import 'package:medical_project/features/auth/presentation/views/widgets/email_and_password_widget.dart';
import 'package:medical_project/features/auth/presentation/views/widgets/welcome_widget.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Form(
          key: cubit.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WelcomeWidget(),
              const EmailAndPasswordWidget(),
              32.verticalSpace,
              CustomButton(
                text: 'Login',
                onPressed: () {
                  if (cubit.formKey.currentState!.validate()) {
                    cubit.emitLoginState();
                  }
                },
              ),
              16.verticalSpace,
              DontHaveAnAccount(),
            ],
          ),
        ),
      ),
    );
  }
}
