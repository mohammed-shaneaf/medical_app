import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_project/core/theme/app_colors.dart';
import 'package:medical_project/core/theme/app_styles.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;
  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 1 lowercase letter', hasLowerCase),
        2.verticalSpace,
        buildValidationRow('At least 1 uppercase letter', hasUpperCase),
        2.verticalSpace,
        buildValidationRow(
          'At least 1 special character',
          hasSpecialCharacters,
        ),
        2.verticalSpace,
        buildValidationRow('At least 1 number', hasNumber),
        2.verticalSpace,
        buildValidationRow('At least 8 characters long', hasMinLength),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(radius: 2.5, backgroundColor: AppColors.grayColor),
        6.horizontalSpace,
        Text(
          text,
          style: AppStyles.font13DarkBlueRegular.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 3,
            color: hasValidated ? AppColors.grayColor : AppColors.darkBlueColor,
          ),
        ),
      ],
    );
  }
}
