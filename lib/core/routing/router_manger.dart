import 'package:flutter/material.dart';
import 'package:medical_project/core/routing/router_name.dart';
import 'package:medical_project/features/auth/presentation/views/forgot_password_view.dart';
import 'package:medical_project/features/auth/presentation/views/sign_in_view.dart';
import 'package:medical_project/features/auth/presentation/views/sign_up_view.dart';
import 'package:medical_project/features/on_boarding/views/on_boarding_view.dart';

MaterialPageRoute ongenerateroute(RouteSettings settings) {
  switch (settings.name) {
    case RouterName.onBoardingView:
      return MaterialPageRoute(builder: (_) => const OnBoardingView());

    case RouterName.signin:
      return MaterialPageRoute(builder: (_) => const SignInView());

    case RouterName.signup:
      return MaterialPageRoute(builder: (_) => const SignUpView());

    case RouterName.forgotPassword:
      return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
    default:
      return MaterialPageRoute(
        builder: (_) => Center(child: Text('No Route Found')),
      );
  }
}
