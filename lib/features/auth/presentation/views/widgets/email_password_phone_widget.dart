import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_project/common/widgets/custom_text_form_field.dart';
import 'package:medical_project/core/utils/app_regex.dart';
import 'package:medical_project/features/auth/presentation/logic/manager/sign_up_cubit/sign_up_cubit.dart';
import 'package:medical_project/features/auth/presentation/views/widgets/password_validations.dart';
import 'package:medical_project/features/auth/presentation/views/widgets/phone_text_field.dart';

class EmailPasswordPhoneWidget extends StatefulWidget {
  const EmailPasswordPhoneWidget({super.key});

  @override
  State<EmailPasswordPhoneWidget> createState() =>
      _EmailPasswordPhoneWidgetState();
}

class _EmailPasswordPhoneWidgetState extends State<EmailPasswordPhoneWidget> {
  late final TextEditingController _emailCtrl;
  late final TextEditingController _passwordCtrl;
  late final TextEditingController _phoneCtrl;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasNumber = false;
  bool hasSpecialCharacters = false;
  bool hasMinLength = false;

  VoidCallback? _passwordListener;

  @override
  void initState() {
    super.initState();
    final cubit = context.read<SignUpCubit>();
    _emailCtrl = cubit.emailController;
    _passwordCtrl = cubit.passwordController;
    _phoneCtrl = cubit.phoneController;

    _passwordListener = () {
      final pwd = _passwordCtrl.text;
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(pwd);
        hasUppercase = AppRegex.hasUpperCase(pwd);
        hasNumber = AppRegex.hasNumber(pwd);
        hasSpecialCharacters = AppRegex.hasSpecialCharacters(pwd);
        hasMinLength = AppRegex.hasMinLength(pwd); // e.g., >= 8
      });
    };
    _passwordCtrl.addListener(_passwordListener!);
  }

  String? _validateEmail(String? value) {
    final v = value?.trim() ?? '';
    if (v.isEmpty) return 'Please enter your email';
    if (!v.contains('@')) return 'Please enter a valid email';
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    if (!hasMinLength ||
        !hasLowercase ||
        !hasUppercase ||
        !hasNumber ||
        !hasSpecialCharacters) {
      return 'Password must include upper/lowercase, number, special char, and be 8+ chars';
    }
    return null;
  }

  String? _validatePhone(String? value) {
    final v = value?.trim() ?? '';
    if (v.isEmpty) return 'Please enter your phone';
    // If you have AppRegex.hasValidPhone, use it instead:
    if (v.length < 7) return 'Please enter a valid phone';
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Email
        CustomTextFormField(
          hintText: 'Email',
          controller: _emailCtrl,
          obscureText: false,
          validator: _validateEmail,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.emailAddress,
        ),
        16.verticalSpace,

        // Password
        CustomTextFormField(
          hintText: 'Password',
          controller: _passwordCtrl,
          obscureText: true,
          validator: _validatePassword,
          textInputAction: TextInputAction.next,
        ),
        24.verticalSpace,

        // Live password rules
        PasswordValidations(
          hasLowerCase: hasLowercase,
          hasUpperCase: hasUppercase,
          hasSpecialCharacters: hasSpecialCharacters,
          hasNumber: hasNumber,
          hasMinLength: hasMinLength,
        ),
        16.verticalSpace,

        // Phone
        PhoneTextField(controller: _phoneCtrl),
        32.verticalSpace,
      ],
    );
  }

  @override
  void dispose() {
    if (_passwordListener != null) {
      _passwordCtrl.removeListener(_passwordListener!);
    }
    super.dispose();
  }
}
