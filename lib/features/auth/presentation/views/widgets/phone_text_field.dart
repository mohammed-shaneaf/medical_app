import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_intl_phone_field/flutter_intl_phone_field.dart';
import 'package:flutter_intl_phone_field/phone_number.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_project/core/theme/app_colors.dart';

class PhoneTextField extends StatelessWidget {
  const PhoneTextField({
    super.key,
    required this.controller,
    // this.validator,
  });

  final TextEditingController controller;
  // final  FutureOr<String>? Function(PhoneNumber?)? validator;

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      controller: controller,
      initialCountryCode: 'SY',
      // validator: validator,
      decoration: InputDecoration(
        fillColor: AppColors.grayColor,
        filled: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.r)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
      ),
    );
  }
}
