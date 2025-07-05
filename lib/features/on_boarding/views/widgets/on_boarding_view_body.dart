import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_project/core/utils/custom_button.dart';
import 'package:medical_project/features/on_boarding/views/widgets/build_doctor_image.dart';
import 'package:medical_project/features/on_boarding/views/widgets/on_boarding_text_desciptation.dart';
import 'package:medical_project/features/on_boarding/views/widgets/on_boarding_top_section.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          OnBoardingTopSection(),
          41.verticalSpace,
          BuildDoctorImage(),
          18.verticalSpace,
          OnBoardingTextDescription(),
          32.verticalSpace,
          CustomButton(text: 'Get Started', onPressed: () {}),
        ],
      ),
    );
  }
}
