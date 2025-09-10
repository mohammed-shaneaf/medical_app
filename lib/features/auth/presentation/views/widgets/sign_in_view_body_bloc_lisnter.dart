import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_project/core/routing/router_name.dart';
import 'package:medical_project/features/auth/presentation/logic/manager/login_cubit/login_cubit.dart';
import 'package:medical_project/features/auth/presentation/logic/manager/login_cubit/login_state.dart';
import 'package:medical_project/features/auth/presentation/views/widgets/sign_in_view_body.dart';
import 'package:snackify/enums/snack_enums.dart';
import 'package:snackify/snackify.dart';

class SignInViewBodyBlocListener extends StatelessWidget {
  const SignInViewBodyBlocListener({super.key});

  void _showErrorDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("Something went wrong"),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: const Text("Got it"),
          ),
        ],
      ),
    );
  }

  void _showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => const Center(child: CircularProgressIndicator()),
    );
  }

  void _hideLoadingDialog(BuildContext context) {
    Navigator.of(context, rootNavigator: true).pop();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Error || current is Success,
      listener: (context, state) {
        state.whenOrNull(
          loading: () => _showLoadingDialog(context),
          error: (error) {
            _hideLoadingDialog(context);
            _showErrorDialog(context, error);
          },
          success: (_) {
            _hideLoadingDialog(context);
            Snackify.show(
              context: context,
              type: SnackType.success,
              title: const Text('Login Successful'),
              subtitle: const Text('Welcome back!'),
              position: SnackPosition.bottom,
              duration: const Duration(seconds: 2),
            );
            Navigator.pushNamed(context, RouterName.home);
          },
        );
      },
      child: const SignInViewBody(),
    );
  }
}
