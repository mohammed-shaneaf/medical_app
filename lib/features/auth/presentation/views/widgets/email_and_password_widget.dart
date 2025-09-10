import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_project/common/widgets/custom_text_form_field.dart';
import 'package:medical_project/core/utils/app_regex.dart';
import 'package:medical_project/features/auth/presentation/logic/manager/login_cubit/login_cubit.dart';
import 'package:medical_project/features/auth/presentation/views/widgets/password_validations.dart';

class EmailAndPasswordWidget extends StatefulWidget {
  const EmailAndPasswordWidget({super.key});

  @override
  State<EmailAndPasswordWidget> createState() => _EmailAndPasswordWidgetState();
}

class _EmailAndPasswordWidgetState extends State<EmailAndPasswordWidget> {
  late TextEditingController passwordController;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasNumber = false;
  bool hasSpecialCharacters = false;
  bool hasMinLength = false;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    _setupPasswordValidationListener();
  }

  void _setupPasswordValidationListener() {
    passwordController.addListener(() {
      final password = passwordController.text;
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(password);
        hasUppercase = AppRegex.hasUpperCase(password);
        hasNumber = AppRegex.hasNumber(password);
        hasSpecialCharacters = AppRegex.hasSpecialCharacters(password);
        hasMinLength = AppRegex.hasMinLength(password);
      });
    });
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    } else if (!value.contains('@')) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    } else if (!hasMinLength ||
        !hasLowercase ||
        !hasUppercase ||
        !hasNumber ||
        !hasSpecialCharacters) {
      return 'Password must be strong: include upper/lowercase, numbers, special characters and be 8+ chars';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        36.verticalSpace,
        CustomTextFormField(
          hintText: 'Email',
          obscureText: false,
          validator: _validateEmail,
        ),
        16.verticalSpace,
        CustomTextFormField(
          hintText: 'Password',
          controller: passwordController,
          obscureText: true,
          validator: _validatePassword,
        ),
        24.verticalSpace,
        PasswordValidations(
          hasLowerCase: hasLowercase,
          hasUpperCase: hasUppercase,
          hasSpecialCharacters: hasSpecialCharacters,
          hasNumber: hasNumber,
          hasMinLength: hasMinLength,
        ),
      ],
    );
  }

  @override
  void dispose() {
    passwordController.removeListener(() {});
    super.dispose();
  }
}
