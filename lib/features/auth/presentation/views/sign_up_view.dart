import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_project/core/di/depedency_injection.dart';
import 'package:medical_project/features/auth/presentation/logic/manager/sign_up_cubit/sign_up_cubit.dart';
import 'package:medical_project/features/auth/presentation/views/widgets/sign_up_view_body_bloc_listner.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (_) => getIt<SignUpCubit>(),
          child: SignUpViewBodyBlocListner(),
        ),
      ),
    );
  }
}
