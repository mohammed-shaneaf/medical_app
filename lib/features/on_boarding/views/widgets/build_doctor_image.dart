import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_project/core/theme/app_colors.dart';
import 'package:medical_project/core/theme/app_styles.dart';
import 'package:medical_project/core/utils/app_images.dart';

class BuildDoctorImage extends StatelessWidget {
  const BuildDoctorImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ShaderMask(
          shaderCallback: (Rect bounds) {
            return const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black, Colors.transparent],
              stops: [0.4, 1],
            ).createShader(bounds);
          },
          blendMode: BlendMode.dstIn,
          child: Image.asset(
            Assets.assetsImagesOnBoardingDoctor,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 1,
          left: 21.w,
          right: 21.w,
          child: Text(
            'Best Doctor \n Appointment App',
            textAlign: TextAlign.center,
            style: AppStyles.f32bold.copyWith(color: AppColors.primaryColor),
          ),
        ),
      ],
    );
  }
}
