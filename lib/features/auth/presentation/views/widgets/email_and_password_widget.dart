import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_project/common/widgets/custom_text_form_field.dart';

class EmailAndPasswordWidget extends StatelessWidget {
  const EmailAndPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        36.verticalSpace,
        CustomTextFormField(hintText: 'Email', obscureText: false),
        16.verticalSpace,
        CustomTextFormField(hintText: 'Password', obscureText: true),
        16.verticalSpace,
      ],
    );
  }
}
