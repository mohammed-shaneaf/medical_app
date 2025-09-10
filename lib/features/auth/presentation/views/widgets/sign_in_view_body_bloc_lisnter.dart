import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_project/core/routing/router_name.dart';
import 'package:medical_project/core/utils/func/hide_loading_dialog.dart';
import 'package:medical_project/core/utils/func/show_dialog.dart';
import 'package:medical_project/core/utils/func/show_error_dialog.dart';
import 'package:medical_project/features/auth/presentation/logic/manager/login_cubit/login_cubit.dart';
import 'package:medical_project/features/auth/presentation/logic/manager/login_cubit/login_state.dart';
import 'package:medical_project/features/auth/presentation/views/widgets/sign_in_view_body.dart';
import 'package:snackify/enums/snack_enums.dart';
import 'package:snackify/snackify.dart';

class SignInViewBodyBlocListener extends StatelessWidget {
  const SignInViewBodyBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Error || current is Success,
      listener: (context, state) {
        state.whenOrNull(
          loading: () => showLoadingDialog(context),
          error: (error) {
            hideLoadingDialog(context);
            showErrorDialog(context, error);
          },
          success: (_) {
            hideLoadingDialog(context);
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
