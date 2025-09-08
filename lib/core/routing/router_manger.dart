import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_project/core/di/depedency_injection.dart';
import 'package:medical_project/core/routing/router_name.dart';
import 'package:medical_project/features/auth/presentation/logic/manager/login_cubit/login_cubit.dart';
import 'package:medical_project/features/auth/presentation/views/forgot_password_view.dart';
import 'package:medical_project/features/auth/presentation/views/sign_in_view.dart';
import 'package:medical_project/features/auth/presentation/views/sign_up_view.dart';
import 'package:medical_project/features/on_boarding/views/on_boarding_view.dart';

MaterialPageRoute ongenerateroute(RouteSettings settings) {
  switch (settings.name) {
    case RouterName.onBoardingView:
      return MaterialPageRoute(builder: (_) => const OnBoardingView());

    case RouterName.signin:
      return MaterialPageRoute(
        builder: (_) => BlocProvider(
          create: (context) => getIt<LoginCubit>(),
          child: const SignInView(),
        ),
      );

    case RouterName.signup:
      return MaterialPageRoute(builder: (_) => const SignUpView());

    case RouterName.forgotPassword:
      return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(child: Text('No route defined for ${settings.name}')),
        ),
      );
  }
}
